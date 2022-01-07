
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;


 float sqrt (float) ;

void AAS_ApplyFriction(vec3_t vel, float friction, float stopspeed,
             float frametime)
{
 float speed, control, newspeed;


 speed = sqrt(vel[0] * vel[0] + vel[1] * vel[1]);
 if (speed)
 {
  control = speed < stopspeed ? stopspeed : speed;
  newspeed = speed - frametime * control * friction;
  if (newspeed < 0) newspeed = 0;
  newspeed /= speed;
  vel[0] *= newspeed;
  vel[1] *= newspeed;
 }
}
