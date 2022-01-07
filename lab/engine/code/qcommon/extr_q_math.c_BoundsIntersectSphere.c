
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec_t ;
typedef scalar_t__* vec3_t ;
typedef int qboolean ;


 int qfalse ;
 int qtrue ;

qboolean BoundsIntersectSphere(const vec3_t mins, const vec3_t maxs,
  const vec3_t origin, vec_t radius)
{
 if ( origin[0] - radius > maxs[0] ||
  origin[0] + radius < mins[0] ||
  origin[1] - radius > maxs[1] ||
  origin[1] + radius < mins[1] ||
  origin[2] - radius > maxs[2] ||
  origin[2] + radius < mins[2])
 {
  return qfalse;
 }

 return qtrue;
}
