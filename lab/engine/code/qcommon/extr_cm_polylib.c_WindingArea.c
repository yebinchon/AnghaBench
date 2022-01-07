
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef scalar_t__ vec_t ;
typedef int vec3_t ;


 int CrossProduct (int ,int ,int ) ;
 double VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;

vec_t WindingArea (winding_t *w)
{
 int i;
 vec3_t d1, d2, cross;
 vec_t total;

 total = 0;
 for (i=2 ; i<w->numpoints ; i++)
 {
  VectorSubtract (w->p[i-1], w->p[0], d1);
  VectorSubtract (w->p[i], w->p[0], d2);
  CrossProduct (d1, d2, cross);
  total += 0.5 * VectorLength ( cross );
 }
 return total;
}
