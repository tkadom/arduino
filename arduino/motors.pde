int forward = 0;
int backward = 1;

void leftMotor(int dir, int power)
{
  switch (dir) {
    case 0:
            digitalWrite(5, LOW);
            analogWrite(3, power);
            break;
    case 1:
            digitalWrite(3, LOW);
            analogWrite(5, power);
            break;
  }
}
void rightMotor(int dir, int power)
{
  switch (dir) {
    case 0:
            digitalWrite(9, LOW);
            analogWrite(6, power);
            break;
    case 1:
            digitalWrite(6, LOW);
            analogWrite(9, power);
            break;
  }
}

void allStop()
{
  
 digitalWrite(3, LOW);
 digitalWrite(5, LOW);
 digitalWrite(6, LOW);
 digitalWrite(9, LOW);
}

// the setup routine runs once when you press reset:
void setup()  { 
  // declare pin 9 to be an output:
  pinMode(3, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(9, OUTPUT);
} 
int done = 0;

// the loop routine runs over and over again forever:
void loop()  { 
  // set the brightness of pin 9:
 // analogWrite(3, 255);   
 while( !done ) {
 
    
      leftMotor(forward, 150);
      rightMotor(forward, 150);
      delay(2000);
      allStop();
      delay(1000);
      leftMotor(forward, 150);
      delay(2000);
      allStop();
      delay(1000);
      rightMotor(forward, 150);
      delay(2000);
      allStop();
      delay(1000);
      leftMotor(backward, 150);
      rightMotor(forward, 150);
      delay(2000);
      allStop();
      delay(1000);
      rightMotor(backward, 150);
      leftMotor(forward, 150);
      delay(2000);
      allStop();
      delay(1000);
      
  
    done = 1;
    
    allStop();

}

 
}

