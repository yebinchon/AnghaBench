
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dist; int normal; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_9__ {int numsides; int * maxs; int * mins; TYPE_1__* sides; } ;
typedef TYPE_3__ bspbrush_t ;
struct TYPE_7__ {size_t planenum; int winding; } ;


 int BoundBrush (TYPE_3__*) ;
 int Log_Print (char*,...) ;
 int MAX_MAP_BOUNDS ;
 scalar_t__ WindingsNonConvex (int ,int ,int ,int ,int ,int ) ;
 TYPE_2__* mapplanes ;

void CheckBSPBrush(bspbrush_t *brush)
{
 int i, j;
 plane_t *plane1, *plane2;


 for (i = 0; i < brush->numsides; i++)
 {
  for (j = 0; j < brush->numsides; j++)
  {
   if (i == j) continue;
   plane1 = &mapplanes[brush->sides[i].planenum];
   plane2 = &mapplanes[brush->sides[j].planenum];

   if (WindingsNonConvex(brush->sides[i].winding,
         brush->sides[j].winding,
         plane1->normal, plane2->normal,
         plane1->dist, plane2->dist))
   {
    Log_Print("non convex brush");
    break;
   }
  }
 }
 BoundBrush(brush);

 for (i = 0; i < 3; i++)
 {
  if (brush->mins[i] < -MAX_MAP_BOUNDS || brush->maxs[i] > MAX_MAP_BOUNDS)
  {
   Log_Print("brush: bounds out of range\n");
   Log_Print("ob->mins[%d] = %f, ob->maxs[%d] = %f\n", i, brush->mins[i], i, brush->maxs[i]);
   break;
  }
  if (brush->mins[i] > MAX_MAP_BOUNDS || brush->maxs[i] < -MAX_MAP_BOUNDS)
  {
   Log_Print("brush: no visible sides on brush\n");
   Log_Print("ob->mins[%d] = %f, ob->maxs[%d] = %f\n", i, brush->mins[i], i, brush->maxs[i]);
   break;
  }
 }
}
