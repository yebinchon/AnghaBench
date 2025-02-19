
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numpoints; int** p; } ;
typedef TYPE_1__ winding_t ;
typedef int vec_t ;
typedef int* vec3_t ;


 TYPE_1__* AllocWinding (int) ;
 int DotProduct (int*,int*) ;
 int Error (char*) ;
 int FreeWinding (TYPE_1__*) ;
 int MAX_POINTS_ON_WINDING ;
 int SIDE_BACK ;
 int SIDE_FRONT ;
 int SIDE_ON ;
 int VectorCopy (int*,int*) ;

void ChopWindingInPlace (winding_t **inout, vec3_t normal, vec_t dist, vec_t epsilon)
{
 winding_t *in;
 vec_t dists[MAX_POINTS_ON_WINDING+4];
 int sides[MAX_POINTS_ON_WINDING+4];
 int counts[3];

 vec_t dot;
 int i, j;
 vec_t *p1, *p2;
 vec3_t mid;
 winding_t *f;
 int maxpts;

 in = *inout;
 counts[0] = counts[1] = counts[2] = 0;


 for (i=0 ; i<in->numpoints ; i++)
 {
  dot = DotProduct (in->p[i], normal);
  dot -= dist;
  dists[i] = dot;
  if (dot > epsilon)
   sides[i] = SIDE_FRONT;
  else if (dot < -epsilon)
   sides[i] = SIDE_BACK;
  else
  {
   sides[i] = SIDE_ON;
  }
  counts[sides[i]]++;
 }
 sides[i] = sides[0];
 dists[i] = dists[0];

 if (!counts[0])
 {
  FreeWinding (in);
  *inout = ((void*)0);
  return;
 }
 if (!counts[1])
  return;

 maxpts = in->numpoints+4;


 f = AllocWinding (maxpts);

 for (i=0 ; i<in->numpoints ; i++)
 {
  p1 = in->p[i];

  if (sides[i] == SIDE_ON)
  {
   VectorCopy (p1, f->p[f->numpoints]);
   f->numpoints++;
   continue;
  }

  if (sides[i] == SIDE_FRONT)
  {
   VectorCopy (p1, f->p[f->numpoints]);
   f->numpoints++;
  }

  if (sides[i+1] == SIDE_ON || sides[i+1] == sides[i])
   continue;


  p2 = in->p[(i+1)%in->numpoints];

  dot = dists[i] / (dists[i]-dists[i+1]);
  for (j=0 ; j<3 ; j++)
  {
   if (normal[j] == 1)
    mid[j] = dist;
   else if (normal[j] == -1)
    mid[j] = -dist;
   else
    mid[j] = p1[j] + dot*(p2[j]-p1[j]);
  }

  VectorCopy (mid, f->p[f->numpoints]);
  f->numpoints++;
 }

 if (f->numpoints > maxpts)
  Error ("ClipWinding: points exceeded estimate");
 if (f->numpoints > MAX_POINTS_ON_WINDING)
  Error ("ClipWinding: MAX_POINTS_ON_WINDING");

 FreeWinding (in);
 *inout = f;
}
