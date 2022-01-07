
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_8__ {scalar_t__ dist; int normal; } ;
typedef TYPE_1__ q3_dplane_t ;
struct TYPE_9__ {size_t planeNum; } ;
typedef TYPE_2__ q3_dbrushside_t ;
struct TYPE_10__ {int numSides; int firstSide; } ;
typedef TYPE_3__ q3_dbrush_t ;


 int * BaseWindingForPlane (int ,scalar_t__) ;
 int ChopWindingInPlace (int **,int ,scalar_t__,double) ;
 double DotProduct (int ,int ) ;
 double fabs (scalar_t__) ;
 TYPE_2__* q3_dbrushsides ;
 TYPE_1__* q3_dplanes ;

winding_t *Q3_BrushSideWinding(q3_dbrush_t *brush, q3_dbrushside_t *baseside)
{
 int i;
 q3_dplane_t *baseplane, *plane;
 winding_t *w;
 q3_dbrushside_t *side;


 baseplane = &q3_dplanes[baseside->planeNum];
 w = BaseWindingForPlane(baseplane->normal, baseplane->dist);
 for (i = 0; i < brush->numSides && w; i++)
 {
  side = &q3_dbrushsides[brush->firstSide + i];

  if (side->planeNum == baseside->planeNum) continue;

  plane = &q3_dplanes[side->planeNum];
  if (DotProduct(baseplane->normal, plane->normal) > 0.999
    && fabs(baseplane->dist - plane->dist) < 0.01) continue;

  plane = &q3_dplanes[side->planeNum^1];
  ChopWindingInPlace(&w, plane->normal, plane->dist, -0.1);
 }
 return w;
}
