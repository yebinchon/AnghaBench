
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;
typedef int qboolean ;


 int qfalse ;
 int qtrue ;

qboolean BoundsIntersectPoint(const vec3_t mins, const vec3_t maxs,
  const vec3_t origin)
{
 if ( origin[0] > maxs[0] ||
  origin[0] < mins[0] ||
  origin[1] > maxs[1] ||
  origin[1] < mins[1] ||
  origin[2] > maxs[2] ||
  origin[2] < mins[2])
 {
  return qfalse;
 }

 return qtrue;
}
