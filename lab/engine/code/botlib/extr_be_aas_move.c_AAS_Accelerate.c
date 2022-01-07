
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;


 float DotProduct (float*,float*) ;

void AAS_Accelerate(vec3_t velocity, float frametime, vec3_t wishdir, float wishspeed, float accel)
{

 int i;
 float addspeed, accelspeed, currentspeed;

 currentspeed = DotProduct(velocity, wishdir);
 addspeed = wishspeed - currentspeed;
 if (addspeed <= 0) {
  return;
 }
 accelspeed = accel*frametime*wishspeed;
 if (accelspeed > addspeed) {
  accelspeed = addspeed;
 }

 for (i=0 ; i<3 ; i++) {
  velocity[i] += accelspeed*wishdir[i];
 }
}
