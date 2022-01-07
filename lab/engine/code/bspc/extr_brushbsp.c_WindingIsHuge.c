
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; int** p; } ;
typedef TYPE_1__ winding_t ;
typedef int qboolean ;


 int BOGUS_RANGE ;

qboolean WindingIsHuge (winding_t *w)
{
 int i, j;

 for (i=0 ; i<w->numpoints ; i++)
 {
  for (j=0 ; j<3 ; j++)
   if (w->p[i][j] < -BOGUS_RANGE+1 || w->p[i][j] > BOGUS_RANGE-1)
    return 1;
 }
 return 0;
}
