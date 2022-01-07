
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int numpoints; int * p; } ;
typedef TYPE_2__ winding_t ;
typedef scalar_t__ vec_t ;
struct TYPE_9__ {scalar_t__ dist; int normal; } ;
typedef TYPE_3__ plane_t ;
struct TYPE_10__ {int numsides; TYPE_1__* sides; } ;
typedef TYPE_4__ bspbrush_t ;
struct TYPE_7__ {TYPE_2__* winding; } ;


 scalar_t__ DotProduct (int ,int ) ;
 int PSIDE_BACK ;
 int PSIDE_FRONT ;

int BrushMostlyOnSide (bspbrush_t *brush, plane_t *plane)
{
 int i, j;
 winding_t *w;
 vec_t d, max;
 int side;

 max = 0;
 side = PSIDE_FRONT;
 for (i=0 ; i<brush->numsides ; i++)
 {
  w = brush->sides[i].winding;
  if (!w)
   continue;
  for (j=0 ; j<w->numpoints ; j++)
  {
   d = DotProduct (w->p[j], plane->normal) - plane->dist;
   if (d > max)
   {
    max = d;
    side = PSIDE_FRONT;
   }
   if (-d > max)
   {
    max = -d;
    side = PSIDE_BACK;
   }
  }
 }
 return side;
}
