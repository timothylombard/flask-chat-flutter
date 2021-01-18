import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  RoundedButton( {this.colour, this.button_text, @required this.onPressed});

  final Color colour;
  final Function onPressed;
  final String button_text;

  @override
  Widget build(BuildContext context ){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            button_text,
          ),
        ),
      ),
    );
  }
}