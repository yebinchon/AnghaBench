
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;
typedef int qboolean ;


 scalar_t__ SURFACE_CLIP_EPSILON ;
 int qfalse ;
 int qtrue ;

qboolean CM_BoundsIntersect( const vec3_t mins, const vec3_t maxs, const vec3_t mins2, const vec3_t maxs2 )
{
 if (maxs[0] < mins2[0] - SURFACE_CLIP_EPSILON ||
  maxs[1] < mins2[1] - SURFACE_CLIP_EPSILON ||
  maxs[2] < mins2[2] - SURFACE_CLIP_EPSILON ||
  mins[0] > maxs2[0] + SURFACE_CLIP_EPSILON ||
  mins[1] > maxs2[1] + SURFACE_CLIP_EPSILON ||
  mins[2] > maxs2[2] + SURFACE_CLIP_EPSILON)
 {
  return qfalse;
 }

 return qtrue;
}
