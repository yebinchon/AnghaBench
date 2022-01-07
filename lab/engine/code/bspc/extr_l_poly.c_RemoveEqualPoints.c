
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef int vec3_t ;
typedef int p ;


 int Error (char*) ;
 int MAX_POINTS_ON_WINDING ;
 int VectorCopy (int ,int ) ;
 float VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int memcpy (int *,int *,int) ;

void RemoveEqualPoints(winding_t *w, float epsilon)
{
 int i, nump;
 vec3_t v;
 vec3_t p[MAX_POINTS_ON_WINDING];

 VectorCopy(w->p[0], p[0]);
 nump = 1;
 for (i = 1; i < w->numpoints; i++)
 {
  VectorSubtract(w->p[i], p[nump-1], v);
  if (VectorLength(v) > epsilon)
  {
   if (nump >= MAX_POINTS_ON_WINDING)
    Error("RemoveColinearPoints: MAX_POINTS_ON_WINDING");
   VectorCopy (w->p[i], p[nump]);
   nump++;
  }
 }

 if (nump == w->numpoints)
  return;

 w->numpoints = nump;
 memcpy(w->p, p, nump * sizeof(p[0]));
}
