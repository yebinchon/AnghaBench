
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;


 int AAS_ProjectPointOntoVector (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 float VectorLengthSquared (scalar_t__*) ;
 int VectorSubtract (scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ fabs (scalar_t__) ;

float DistanceFromLineSquared(vec3_t p, vec3_t lp1, vec3_t lp2)
{
 vec3_t proj, dir;
 int j;

 AAS_ProjectPointOntoVector(p, lp1, lp2, proj);
 for (j = 0; j < 3; j++)
  if ((proj[j] > lp1[j] && proj[j] > lp2[j]) ||
   (proj[j] < lp1[j] && proj[j] < lp2[j]))
   break;
 if (j < 3) {
  if (fabs(proj[j] - lp1[j]) < fabs(proj[j] - lp2[j]))
   VectorSubtract(p, lp1, dir);
  else
   VectorSubtract(p, lp2, dir);
  return VectorLengthSquared(dir);
 }
 VectorSubtract(p, proj, dir);
 return VectorLengthSquared(dir);
}
