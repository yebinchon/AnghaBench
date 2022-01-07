
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef int vec3_t ;


 TYPE_1__* AllocWinding (int) ;
 int Error (char*) ;
 int VectorCopy (int ,int ) ;

winding_t *AddWindingPoint(winding_t *w, vec3_t point, int spot)
{
 int i, j;
 winding_t *neww;

 if (spot > w->numpoints)
 {
  Error("AddWindingPoint: num > w->numpoints");
 }
 if (spot < 0)
 {
  Error("AddWindingPoint: num < 0");
 }
 neww = AllocWinding(w->numpoints + 1);
 neww->numpoints = w->numpoints + 1;
 for (i = 0, j = 0; i < neww->numpoints; i++)
 {
  if (i == spot)
  {
   VectorCopy(point, neww->p[i]);
  }
  else
  {
   VectorCopy(w->p[j], neww->p[i]);
   j++;
  }
 }
 return neww;
}
