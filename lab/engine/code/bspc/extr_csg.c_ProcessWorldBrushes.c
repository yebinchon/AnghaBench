
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_7__ {int maxs; int mins; TYPE_2__* headnode; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_8__ {int contents; int planenum; } ;
typedef TYPE_2__ node_t ;
typedef int bspbrush_t ;


 TYPE_2__* AllocNode () ;
 TYPE_1__* BrushBSP (int *,scalar_t__*,scalar_t__*) ;
 int CONTENTS_SOLID ;
 int * ChopBrushes (int *) ;
 int FreeBrushList (int *) ;
 int * MakeBspBrushList (int,int,scalar_t__*,scalar_t__*) ;
 int PLANENUM_LEAF ;
 int ResetBrushBSP () ;
 TYPE_1__* Tree_Alloc () ;
 int VectorCopy (scalar_t__*,int ) ;
 scalar_t__ cancelconversion ;
 scalar_t__* map_maxs ;
 scalar_t__* map_mins ;
 int nocsg ;

tree_t *ProcessWorldBrushes(int brush_start, int brush_end)
{
 bspbrush_t *brushes;
 tree_t *tree;
 node_t *node;
 vec3_t mins, maxs;


 mins[0] = map_mins[0] - 8;
 mins[1] = map_mins[1] - 8;
 mins[2] = map_mins[2] - 8;

 maxs[0] = map_maxs[0] + 8;
 maxs[1] = map_maxs[1] + 8;
 maxs[2] = map_maxs[2] + 8;


 ResetBrushBSP();






 brushes = MakeBspBrushList(brush_start, brush_end, mins, maxs);


 if (!brushes)
 {
  node = AllocNode ();
  node->planenum = PLANENUM_LEAF;
  node->contents = CONTENTS_SOLID;

  tree = Tree_Alloc();
  tree->headnode = node;
  VectorCopy(mins, tree->mins);
  VectorCopy(maxs, tree->maxs);
 }
 else
 {


  if (!nocsg)
  {
   brushes = ChopBrushes(brushes);





  }

  if (cancelconversion)
  {
   FreeBrushList(brushes);
   return ((void*)0);
  }

  tree = BrushBSP(brushes, mins, maxs);
 }

 return tree;
}
