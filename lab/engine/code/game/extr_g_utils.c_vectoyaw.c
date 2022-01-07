
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;


 int M_PI ;
 size_t PITCH ;
 size_t YAW ;
 int atan2 (scalar_t__,scalar_t__) ;

float vectoyaw( const vec3_t vec ) {
 float yaw;

 if (vec[YAW] == 0 && vec[PITCH] == 0) {
  yaw = 0;
 } else {
  if (vec[PITCH]) {
   yaw = ( atan2( vec[YAW], vec[PITCH]) * 180 / M_PI );
  } else if (vec[YAW] > 0) {
   yaw = 90;
  } else {
   yaw = 270;
  }
  if (yaw < 0) {
   yaw += 360;
  }
 }

 return yaw;
}
