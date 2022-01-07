
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int qboolean ;


 float DotProduct (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int qfalse ;
 int qtrue ;

qboolean SpheresIntersect(vec3_t origin1, float radius1, vec3_t origin2, float radius2)
{
 float radiusSum = radius1 + radius2;
 vec3_t diff;

 VectorSubtract(origin1, origin2, diff);

 if (DotProduct(diff, diff) <= radiusSum * radiusSum)
 {
  return qtrue;
 }

 return qfalse;
}
