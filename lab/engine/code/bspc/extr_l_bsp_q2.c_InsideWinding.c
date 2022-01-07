
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numpoints; int ** p; } ;
typedef TYPE_1__ winding_t ;
typedef int vec_t ;
typedef int * vec3_t ;
struct TYPE_6__ {int normal; } ;
typedef TYPE_2__ dplane_t ;


 int CrossProduct (int ,int *,int *) ;
 float DotProduct (int *,int *) ;
 int VectorNormalize (int *) ;
 int VectorSubtract (int *,int *,int *) ;
 float WCONVEX_EPSILON ;
 TYPE_2__* dplanes ;

int InsideWinding(winding_t *w, vec3_t point, int planenum)
{
 int i;
 float dist;
 vec_t *v1, *v2;
 vec3_t normal, edgevec;
 dplane_t *plane;

 for (i = 1; i <= w->numpoints; i++)
 {
  v1 = w->p[i % w->numpoints];
  v2 = w->p[(i + 1) % w->numpoints];

  VectorSubtract(v2, v1, edgevec);
  plane = &dplanes[planenum];
  CrossProduct(plane->normal, edgevec, normal);
  VectorNormalize(normal);
  dist = DotProduct(normal, v1);

  if (DotProduct(normal, point) - dist > WCONVEX_EPSILON) return 0;
 }
 return 1;
}
