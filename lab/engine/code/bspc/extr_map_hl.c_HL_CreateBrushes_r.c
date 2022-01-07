
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int contents; } ;
typedef TYPE_1__ hl_dleaf_t ;
struct TYPE_13__ {struct TYPE_13__* next; int side; } ;
typedef TYPE_2__ bspbrush_t ;
struct TYPE_15__ {int planenum; int* children; } ;
struct TYPE_14__ {int dist; int normal; } ;


 int CONTENTS_LAVA ;
 int CONTENTS_SLIME ;
 int CONTENTS_SOLID ;
 int CONTENTS_WATER ;
 int Error (char*,int) ;
 int FindFloatPlane (int ,int ) ;
 int FreeBrush (TYPE_2__*) ;
 int HL_SplitBrush (TYPE_2__*,int,int,TYPE_2__**,TYPE_2__**) ;
 int Log_Print (char*) ;
 TYPE_1__* hl_dleafs ;
 TYPE_4__* hl_dnodes ;
 TYPE_3__* hl_dplanes ;
 int hl_numbrushes ;
 int qprintf (char*,int ) ;

bspbrush_t *HL_CreateBrushes_r(bspbrush_t *brush, int nodenum)
{
 int planenum;
 bspbrush_t *front, *back;
 hl_dleaf_t *leaf;


 if (nodenum < 0)
 {
  leaf = &hl_dleafs[(-nodenum) - 1];
  if (leaf->contents != 135)
  {



  }
  switch(leaf->contents)
  {
   case 135:
   {
    FreeBrush(brush);
    return ((void*)0);
   }
   case 130:



   case 132:



   {
    brush->side = CONTENTS_SOLID;
    return brush;
   }
   case 128:
   {
    brush->side = CONTENTS_WATER;
    return brush;
   }
   case 131:
   {
    brush->side = CONTENTS_SLIME;
    return brush;
   }
   case 134:
   {
    brush->side = CONTENTS_LAVA;
    return brush;
   }
   default:
   {
    Error("HL_CreateBrushes_r: unknown contents %d in Half-Life BSP", leaf->contents);
    return ((void*)0);
   }
  }
  return ((void*)0);
 }







 planenum = hl_dnodes[nodenum].planenum;
 planenum = FindFloatPlane(hl_dplanes[planenum].normal, hl_dplanes[planenum].dist);

 HL_SplitBrush(brush, planenum, nodenum, &front, &back);

 FreeBrush(brush);

 if (!front || !back)
 {
  Log_Print("HL_CreateBrushes_r: WARNING node not splitting brush\n");

 }

 if (front) front = HL_CreateBrushes_r(front, hl_dnodes[nodenum].children[0]);
 if (back) back = HL_CreateBrushes_r(back, hl_dnodes[nodenum].children[1]);

 if (front)
 {
  for (brush = front; brush->next; brush = brush->next);
  brush->next = back;
  return front;
 }
 else
 {
  return back;
 }
}
