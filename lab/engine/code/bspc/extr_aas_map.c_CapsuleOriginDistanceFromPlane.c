
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float vec_t ;
typedef float* vec3_t ;



vec_t CapsuleOriginDistanceFromPlane(vec3_t normal, vec3_t mins, vec3_t maxs)
{
 float offset_up, offset_down, width, radius;

 width = maxs[0] - mins[0];

 if (maxs[2] - mins[2] < width) {
  width = maxs[2] - mins[2];
 }
 radius = width * 0.5;

 offset_up = maxs[2] - radius;
 offset_down = -mins[2] - radius;


 if ( normal[2] > 0 ) {

  return normal[2] * offset_down + radius;
 }
 else {

  return -normal[2] * offset_up + radius;
 }
}
