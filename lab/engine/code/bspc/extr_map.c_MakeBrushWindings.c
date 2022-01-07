
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
struct TYPE_10__ {size_t planenum; int flags; TYPE_1__* winding; } ;
typedef TYPE_2__ side_t ;
typedef int qboolean ;
struct TYPE_11__ {int dist; int normal; } ;
typedef TYPE_3__ plane_t ;
struct TYPE_12__ {int numsides; int brushnum; int entitynum; int * maxs; int * mins; TYPE_2__* original_sides; } ;
typedef TYPE_4__ mapbrush_t ;


 int AddPointToBounds (int ,int *,int *) ;
 TYPE_1__* BaseWindingForPlane (int ,int ) ;
 int ChopWindingInPlace (TYPE_1__**,int ,int ,int ) ;
 int ClearBounds (int *,int *) ;
 int Log_Print (char*,int ,int ) ;
 int MAX_MAP_BOUNDS ;
 int SFL_BEVEL ;
 int SFL_VISIBLE ;
 TYPE_3__* mapplanes ;

qboolean MakeBrushWindings(mapbrush_t *ob)
{
 int i, j;
 winding_t *w;
 side_t *side;
 plane_t *plane;

 ClearBounds (ob->mins, ob->maxs);

 for (i = 0; i < ob->numsides; i++)
 {
  plane = &mapplanes[ob->original_sides[i].planenum];
  w = BaseWindingForPlane(plane->normal, plane->dist);
  for (j = 0; j <ob->numsides && w; j++)
  {
   if (i == j) continue;
   if (ob->original_sides[j].flags & SFL_BEVEL) continue;
   plane = &mapplanes[ob->original_sides[j].planenum^1];
   ChopWindingInPlace(&w, plane->normal, plane->dist, 0);
  }

  side = &ob->original_sides[i];
  side->winding = w;
  if (w)
  {
   side->flags |= SFL_VISIBLE;
   for (j = 0; j < w->numpoints; j++)
    AddPointToBounds (w->p[j], ob->mins, ob->maxs);
  }
 }

 for (i = 0; i < 3; i++)
 {

  if (ob->mins[i] < -MAX_MAP_BOUNDS || ob->maxs[i] > MAX_MAP_BOUNDS)
  {
   Log_Print("entity %i, brush %i: bounds out of range\n", ob->entitynum, ob->brushnum);
   ob->numsides = 0;
   break;
  }
  if (ob->mins[i] > MAX_MAP_BOUNDS || ob->maxs[i] < -MAX_MAP_BOUNDS)
  {
   Log_Print("entity %i, brush %i: no visible sides on brush\n", ob->entitynum, ob->brushnum);
   ob->numsides = 0;
   break;
  }
 }
 return 1;
}
