import 'package:flutter/material.dart';
import 'package:hover_effect/hover_effect.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Container(
                width: 150,
                height: 300,
                child: HoverCard(
                  builder: (context, hovering) {
                    return Container(
                      color: Color(0xFFE9E9E9),
                    );
                  },
                  depth: 4,
                  depthColor: Colors.grey[400],
                  // onTap: () => print('Hello, World!'),
                  shadow: BoxShadow(
                      color: Colors.black26,
                      blurRadius: 30,
                      spreadRadius: -20,
                      offset: Offset(10, 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
