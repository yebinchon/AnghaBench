
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float AngleMod (float) ;

float BotChangeViewAngle(float angle, float ideal_angle, float speed) {
 float move;

 angle = AngleMod(angle);
 ideal_angle = AngleMod(ideal_angle);
 if (angle == ideal_angle) return angle;
 move = ideal_angle - angle;
 if (ideal_angle > angle) {
  if (move > 180.0) move -= 360.0;
 }
 else {
  if (move < -180.0) move += 360.0;
 }
 if (move > 0) {
  if (move > speed) move = speed;
 }
 else {
  if (move < -speed) move = -speed;
 }
 return AngleMod(angle + move);
}
