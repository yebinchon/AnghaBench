
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;
typedef int qboolean ;


 float AngleMod (float) ;
 int qfalse ;
 int qtrue ;

qboolean InFieldOfVision(vec3_t viewangles, float fov, vec3_t angles)
{
 int i;
 float diff, angle;

 for (i = 0; i < 2; i++) {
  angle = AngleMod(viewangles[i]);
  angles[i] = AngleMod(angles[i]);
  diff = angles[i] - angle;
  if (angles[i] > angle) {
   if (diff > 180.0) diff -= 360.0;
  }
  else {
   if (diff < -180.0) diff += 360.0;
  }
  if (diff > 0) {
   if (diff > fov * 0.5) return qfalse;
  }
  else {
   if (diff < -fov * 0.5) return qfalse;
  }
 }
 return qtrue;
}
