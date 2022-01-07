
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numpoints; float** p; } ;
typedef TYPE_1__ winding_t ;
typedef float* vec3_t ;


 int CrossProduct (float*,float*,float*) ;
 float DotProduct (float*,float*) ;
 int Log_Write (char*) ;
 int VectorCopy (float*,float*) ;
 double VectorLength (float*) ;
 int VectorNegate (float*,float*) ;
 int VectorNormalize (float*) ;
 int VectorSubtract (float*,float*,float*) ;

int FindPlaneSeperatingWindings(winding_t *w1, winding_t *w2, vec3_t dir,
           vec3_t normal, float *dist)
{
 int i, i2, j, j2, n;
 int sides1[3], sides2[3];
 float dist1, dist2, dot, diff;
 vec3_t normal1, normal2;
 vec3_t v1, v2;

 for (i = 0; i < w1->numpoints; i++)
 {
  i2 = (i+1) % w1->numpoints;

  VectorSubtract(w1->p[i2], w1->p[i], v1);
  if (VectorLength(v1) < 0.1)
  {

   continue;
  }
  CrossProduct(v1, dir, normal1);
  VectorNormalize(normal1);
  dist1 = DotProduct(normal1, w1->p[i]);

  for (j = 0; j < w2->numpoints; j++)
  {
   j2 = (j+1) % w2->numpoints;

   VectorSubtract(w2->p[j2], w2->p[j], v2);
   if (VectorLength(v2) < 0.1)
   {

    continue;
   }
   CrossProduct(v2, dir, normal2);
   VectorNormalize(normal2);
   dist2 = DotProduct(normal2, w2->p[j]);

   diff = dist1 - dist2;
   if (diff < -0.1 || diff > 0.1)
   {
    dist2 = -dist2;
    VectorNegate(normal2, normal2);
    diff = dist1 - dist2;
    if (diff < -0.1 || diff > 0.1) continue;
   }

   for (n = 0; n < 3; n++)
   {
    diff = normal1[n] - normal2[n];
    if (diff < -0.0001 || diff > 0.0001) break;
   }
   if (n != 3) continue;


   sides1[0] = sides1[1] = sides1[2] = 0;
   for (n = 0; n < w1->numpoints; n++)
   {
    dot = DotProduct(w1->p[n], normal1) - dist1;
    if (dot > 0.1) sides1[0]++;
    else if (dot < -0.1) sides1[1]++;
    else sides1[2]++;
   }


   sides2[0] = sides2[1] = sides2[2] = 0;
   for (n = 0; n < w2->numpoints; n++)
   {

    dot = DotProduct(w2->p[n], normal1) - dist1;
    if (dot > 0.1) sides2[0]++;
    else if (dot < -0.1) sides2[1]++;
    else sides2[2]++;
   }

   if (sides1[0] && sides1[1])
   {
    Log_Write("FindPlaneSeperatingWindings: winding1 non-convex\r\n");
    continue;
   }

   if (sides2[0] && sides2[1])
   {
    Log_Write("FindPlaneSeperatingWindings: winding2 non-convex\r\n");
    continue;
   }

   if ((!sides1[0] && !sides1[1]) || (!sides2[0] && !sides2[1]))
   {

    continue;
   }

   if ((!sides1[0] && !sides2[1]) || (!sides1[1] && !sides2[0]))
   {
    VectorCopy(normal1, normal);
    *dist = dist1;
    return 1;
   }
  }
 }
 return 0;
}
