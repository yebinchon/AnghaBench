
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_7__ {size_t planenum; int flags; int * winding; } ;
typedef TYPE_1__ side_t ;
struct TYPE_8__ {int dist; int normal; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_9__ {int numsides; TYPE_1__* sides; } ;
typedef TYPE_3__ bspbrush_t ;


 int * BaseWindingForPlane (int ,int ) ;
 int BoundBrush (TYPE_3__*) ;
 int ChopWindingInPlace (int **,int ,int ,int ) ;
 int SFL_BEVEL ;
 TYPE_2__* mapplanes ;

void CreateBrushWindings (bspbrush_t *brush)
{
 int i, j;
 winding_t *w;
 side_t *side;
 plane_t *plane;

 for (i=0 ; i<brush->numsides ; i++)
 {
  side = &brush->sides[i];
  plane = &mapplanes[side->planenum];
  w = BaseWindingForPlane (plane->normal, plane->dist);
  for (j=0 ; j<brush->numsides && w; j++)
  {
   if (i == j)
    continue;
   if (brush->sides[j].flags & SFL_BEVEL)
    continue;
   plane = &mapplanes[brush->sides[j].planenum^1];
   ChopWindingInPlace (&w, plane->normal, plane->dist, 0);
  }

  side->winding = w;
 }

 BoundBrush (brush);
}
