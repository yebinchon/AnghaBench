
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_4__ {float dist; int* normal; } ;
typedef TYPE_1__ aas_plane_t ;


 float DotProduct (int*,int*) ;
 scalar_t__ VectorBetweenVectors (int*,int*,int*) ;
 int VectorCopy (int*,int*) ;
 float VectorDistance (int*,int*) ;
 int VectorSubtract (int*,int*,int*) ;
 int qfalse ;
 int qtrue ;

float AAS_ClosestEdgePoints(vec3_t v1, vec3_t v2, vec3_t v3, vec3_t v4,
       aas_plane_t *plane1, aas_plane_t *plane2,
       vec3_t beststart1, vec3_t bestend1,
       vec3_t beststart2, vec3_t bestend2, float bestdist)
{
 vec3_t dir1, dir2, p1, p2, p3, p4;
 float a1, a2, b1, b2, dist, dist1, dist2;
 int founddist;


 VectorSubtract(v2, v1, dir1);
 VectorSubtract(v4, v3, dir2);

 dir1[2] = 0;
 dir2[2] = 0;






 if (dir2[0])
 {
  a2 = dir2[1] / dir2[0];
  b2 = v3[1] - a2 * v3[0];

  p1[0] = (DotProduct(v1, dir2) - (a2 * dir2[0] + b2 * dir2[1])) / dir2[0];
  p1[1] = a2 * p1[0] + b2;

  p2[0] = (DotProduct(v2, dir2) - (a2 * dir2[0] + b2 * dir2[1])) / dir2[0];
  p2[1] = a2 * p2[0] + b2;
 }
 else
 {

  p1[0] = v3[0];
  p1[1] = v1[1];

  p2[0] = v3[0];
  p2[1] = v2[1];
 }

 if (dir1[0])
 {

  a1 = dir1[1] / dir1[0];
  b1 = v1[1] - a1 * v1[0];

  p3[0] = (DotProduct(v3, dir1) - (a1 * dir1[0] + b1 * dir1[1])) / dir1[0];
  p3[1] = a1 * p3[0] + b1;

  p4[0] = (DotProduct(v4, dir1) - (a1 * dir1[0] + b1 * dir1[1])) / dir1[0];
  p4[1] = a1 * p4[0] + b1;
 }
 else
 {

  p3[0] = v1[0];
  p3[1] = v3[1];

  p4[0] = v1[0];
  p4[1] = v4[1];
 }

 p1[2] = 0;
 p2[2] = 0;
 p3[2] = 0;
 p4[2] = 0;

 p1[2] = (plane2->dist - DotProduct(plane2->normal, p1)) / plane2->normal[2];
 p2[2] = (plane2->dist - DotProduct(plane2->normal, p2)) / plane2->normal[2];
 p3[2] = (plane1->dist - DotProduct(plane1->normal, p3)) / plane1->normal[2];
 p4[2] = (plane1->dist - DotProduct(plane1->normal, p4)) / plane1->normal[2];

 founddist = qfalse;

 if (VectorBetweenVectors(p1, v3, v4))
 {
  dist = VectorDistance(v1, p1);
  if (dist > bestdist - 0.5 && dist < bestdist + 0.5)
  {
   dist1 = VectorDistance(beststart1, v1);
   dist2 = VectorDistance(beststart2, v1);
   if (dist1 > dist2)
   {
    if (dist1 > VectorDistance(beststart1, beststart2)) VectorCopy(v1, beststart2);
   }
   else
   {
    if (dist2 > VectorDistance(beststart1, beststart2)) VectorCopy(v1, beststart1);
   }
   dist1 = VectorDistance(bestend1, p1);
   dist2 = VectorDistance(bestend2, p1);
   if (dist1 > dist2)
   {
    if (dist1 > VectorDistance(bestend1, bestend2)) VectorCopy(p1, bestend2);
   }
   else
   {
    if (dist2 > VectorDistance(bestend1, bestend2)) VectorCopy(p1, bestend1);
   }
  }
  else if (dist < bestdist)
  {
   bestdist = dist;
   VectorCopy(v1, beststart1);
   VectorCopy(v1, beststart2);
   VectorCopy(p1, bestend1);
   VectorCopy(p1, bestend2);
  }
  founddist = qtrue;
 }
 if (VectorBetweenVectors(p2, v3, v4))
 {
  dist = VectorDistance(v2, p2);
  if (dist > bestdist - 0.5 && dist < bestdist + 0.5)
  {
   dist1 = VectorDistance(beststart1, v2);
   dist2 = VectorDistance(beststart2, v2);
   if (dist1 > dist2)
   {
    if (dist1 > VectorDistance(beststart1, beststart2)) VectorCopy(v2, beststart2);
   }
   else
   {
    if (dist2 > VectorDistance(beststart1, beststart2)) VectorCopy(v2, beststart1);
   }
   dist1 = VectorDistance(bestend1, p2);
   dist2 = VectorDistance(bestend2, p2);
   if (dist1 > dist2)
   {
    if (dist1 > VectorDistance(bestend1, bestend2)) VectorCopy(p2, bestend2);
   }
   else
   {
    if (dist2 > VectorDistance(bestend1, bestend2)) VectorCopy(p2, bestend1);
   }
  }
  else if (dist < bestdist)
  {
   bestdist = dist;
   VectorCopy(v2, beststart1);
   VectorCopy(v2, beststart2);
   VectorCopy(p2, bestend1);
   VectorCopy(p2, bestend2);
  }
  founddist = qtrue;
 }
 if (VectorBetweenVectors(p3, v1, v2))
 {
  dist = VectorDistance(v3, p3);
  if (dist > bestdist - 0.5 && dist < bestdist + 0.5)
  {
   dist1 = VectorDistance(beststart1, p3);
   dist2 = VectorDistance(beststart2, p3);
   if (dist1 > dist2)
   {
    if (dist1 > VectorDistance(beststart1, beststart2)) VectorCopy(p3, beststart2);
   }
   else
   {
    if (dist2 > VectorDistance(beststart1, beststart2)) VectorCopy(p3, beststart1);
   }
   dist1 = VectorDistance(bestend1, v3);
   dist2 = VectorDistance(bestend2, v3);
   if (dist1 > dist2)
   {
    if (dist1 > VectorDistance(bestend1, bestend2)) VectorCopy(v3, bestend2);
   }
   else
   {
    if (dist2 > VectorDistance(bestend1, bestend2)) VectorCopy(v3, bestend1);
   }
  }
  else if (dist < bestdist)
  {
   bestdist = dist;
   VectorCopy(p3, beststart1);
   VectorCopy(p3, beststart2);
   VectorCopy(v3, bestend1);
   VectorCopy(v3, bestend2);
  }
  founddist = qtrue;
 }
 if (VectorBetweenVectors(p4, v1, v2))
 {
  dist = VectorDistance(v4, p4);
  if (dist > bestdist - 0.5 && dist < bestdist + 0.5)
  {
   dist1 = VectorDistance(beststart1, p4);
   dist2 = VectorDistance(beststart2, p4);
   if (dist1 > dist2)
   {
    if (dist1 > VectorDistance(beststart1, beststart2)) VectorCopy(p4, beststart2);
   }
   else
   {
    if (dist2 > VectorDistance(beststart1, beststart2)) VectorCopy(p4, beststart1);
   }
   dist1 = VectorDistance(bestend1, v4);
   dist2 = VectorDistance(bestend2, v4);
   if (dist1 > dist2)
   {
    if (dist1 > VectorDistance(bestend1, bestend2)) VectorCopy(v4, bestend2);
   }
   else
   {
    if (dist2 > VectorDistance(bestend1, bestend2)) VectorCopy(v4, bestend1);
   }
  }
  else if (dist < bestdist)
  {
   bestdist = dist;
   VectorCopy(p4, beststart1);
   VectorCopy(p4, beststart2);
   VectorCopy(v4, bestend1);
   VectorCopy(v4, bestend2);
  }
  founddist = qtrue;
 }


 if (!founddist)
 {
  dist = VectorDistance(v1, v3);
  if (dist < bestdist)
  {
   bestdist = dist;
   VectorCopy(v1, beststart1);
   VectorCopy(v1, beststart2);
   VectorCopy(v3, bestend1);
   VectorCopy(v3, bestend2);
  }
  dist = VectorDistance(v1, v4);
  if (dist < bestdist)
  {
   bestdist = dist;
   VectorCopy(v1, beststart1);
   VectorCopy(v1, beststart2);
   VectorCopy(v4, bestend1);
   VectorCopy(v4, bestend2);
  }
  dist = VectorDistance(v2, v3);
  if (dist < bestdist)
  {
   bestdist = dist;
   VectorCopy(v2, beststart1);
   VectorCopy(v2, beststart2);
   VectorCopy(v3, bestend1);
   VectorCopy(v3, bestend2);
  }
  dist = VectorDistance(v2, v4);
  if (dist < bestdist)
  {
   bestdist = dist;
   VectorCopy(v2, beststart1);
   VectorCopy(v2, beststart2);
   VectorCopy(v4, bestend1);
   VectorCopy(v4, bestend2);
  }
 }
 return bestdist;
}
