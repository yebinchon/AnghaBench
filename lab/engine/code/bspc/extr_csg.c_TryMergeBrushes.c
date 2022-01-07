
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int planenum; scalar_t__ texinfo; int winding; } ;
typedef TYPE_1__ side_t ;
struct TYPE_13__ {int dist; int normal; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_14__ {scalar_t__* mins; scalar_t__* maxs; int numsides; TYPE_1__* sides; int original; } ;
typedef TYPE_3__ bspbrush_t ;


 TYPE_3__* AllocBrush (int) ;
 int BSPBrushWindings (TYPE_3__*) ;
 int BoundBrush (TYPE_3__*) ;
 int CheckBSPBrush (TYPE_3__*) ;
 int Log_Print (char*) ;
 scalar_t__ TEXINFO_NODE ;
 scalar_t__ WindingsNonConvex (int ,int ,int ,int ,int ,int ) ;
 TYPE_2__* mapplanes ;

bspbrush_t *TryMergeBrushes(bspbrush_t *brush1, bspbrush_t *brush2)
{
 int i, j, k, n, shared;
 side_t *side1, *side2, *cs;
 plane_t *plane1, *plane2;
 bspbrush_t *newbrush;


 for (i = 0; i < 3; i++)
 {
  if (brush1->mins[i] > brush2->maxs[i] + 2
    || brush1->maxs[i] < brush2->mins[i] - 2)
  {
   return ((void*)0);
  }
 }

 shared = 0;

 for (i = 0; i < brush1->numsides; i++)
 {
  side1 = &brush1->sides[i];

  for (k = 0; k < brush2->numsides; k++)
  {
   side2 = &brush2->sides[k];
   if (side1->planenum == (side2->planenum^1))
   {
    shared++;

    if (shared > 1) return ((void*)0);
    break;
   }
  }
  if (k < brush2->numsides) continue;

  for (j = 0; j < brush2->numsides; j++)
  {
   side2 = &brush2->sides[j];

   for (n = 0; n < brush1->numsides; n++)
   {
    side1 = &brush1->sides[n];
    if (side1->planenum == (side2->planenum^1)) break;
   }
   if (n < brush1->numsides) continue;

   side1 = &brush1->sides[i];


   if (side1->planenum == side2->planenum)
   {
    if (side1->texinfo != TEXINFO_NODE &&
     side2->texinfo != TEXINFO_NODE &&
     side1->texinfo != side2->texinfo) return ((void*)0);
    continue;
   }

   plane1 = &mapplanes[side1->planenum];
   plane2 = &mapplanes[side2->planenum];

   if (WindingsNonConvex(side1->winding, side2->winding,
         plane1->normal, plane2->normal,
         plane1->dist, plane2->dist))
   {
    return ((void*)0);
   }
  }
 }
 newbrush = AllocBrush(brush1->numsides + brush2->numsides);
 newbrush->original = brush1->original;
 newbrush->numsides = 0;


 for (i = 0; i < brush1->numsides; i++)
 {
  side1 = &brush1->sides[i];

  for (n = 0; n < brush2->numsides; n++)
  {
   side2 = &brush2->sides[n];

   if (side1->planenum == side2->planenum)
   {
    if (side1->texinfo == TEXINFO_NODE) side1->texinfo = side2->texinfo;
    if (side2->texinfo == TEXINFO_NODE) side2->texinfo = side1->texinfo;
   }
  }
 }

 for (i = 0; i < brush1->numsides; i++)
 {
  side1 = &brush1->sides[i];

  for (n = 0; n < brush2->numsides; n++)
  {
   side2 = &brush2->sides[n];
   if (side1->planenum == (side2->planenum ^ 1)) break;
  }
  if (n < brush2->numsides) continue;

  for (n = 0; n < newbrush->numsides; n++)
  {
   cs = &newbrush->sides[n];
   if (cs->planenum == side1->planenum)
   {
    Log_Print("brush duplicate plane\n");
    break;
   }
  }
  if (n < newbrush->numsides) continue;

  cs = &newbrush->sides[newbrush->numsides];
  newbrush->numsides++;
  *cs = *side1;
 }
 for (j = 0; j < brush2->numsides; j++)
 {
  side2 = &brush2->sides[j];
  for (n = 0; n < brush1->numsides; n++)
  {
   side1 = &brush1->sides[n];

   if (side2->planenum == side1->planenum) break;

   if (side2->planenum == (side1->planenum ^ 1)) break;
  }
  if (n < brush1->numsides) continue;

  for (n = 0; n < newbrush->numsides; n++)
  {
   cs = &newbrush->sides[n];
   if (cs->planenum == side2->planenum)
   {
    Log_Print("brush duplicate plane\n");
    break;
   }
  }
  if (n < newbrush->numsides) continue;

  cs = &newbrush->sides[newbrush->numsides];
  newbrush->numsides++;
  *cs = *side2;
 }
 BSPBrushWindings(newbrush);
 BoundBrush(newbrush);
 CheckBSPBrush(newbrush);
 return newbrush;
}
