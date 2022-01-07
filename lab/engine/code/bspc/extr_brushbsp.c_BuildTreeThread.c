
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int planenum; } ;
typedef TYPE_1__ side_t ;
struct TYPE_12__ {int contents; int planenum; struct TYPE_12__** children; int * volume; int * brushlist; struct TYPE_12__* parent; TYPE_1__* side; } ;
typedef TYPE_2__ node_t ;
typedef int bspbrush_t ;


 int AddNodeToList (TYPE_2__*) ;
 TYPE_2__* AllocNode () ;
 int CONTENTS_SOLID ;
 int CheckBrushLists (int *,int *) ;
 int DrawBrushList (int *,TYPE_2__*) ;
 int Error (char*) ;
 int FreeBrush (int *) ;
 int FreeBrushList (int *) ;
 int IncreaseNodeCounter () ;
 int LeafNode (TYPE_2__*,int *) ;
 TYPE_2__* NextNodeFromList () ;
 int RemoveThread (int) ;
 TYPE_1__* SelectSplitSide (int *,TYPE_2__*) ;
 int SplitBrush (int *,int,int **,int **) ;
 int SplitBrushList (int *,TYPE_2__*,int **,int **) ;
 int WindingMemory () ;
 int c_brushmemory ;
 int c_nodememory ;
 int c_nodes ;
 int c_peak_totalbspmemory ;
 int c_solidleafnodes ;
 scalar_t__ cancelconversion ;
 scalar_t__ create_aas ;
 scalar_t__ drawflag ;
 int numthreads ;

void BuildTreeThread(int threadid)
{
 node_t *newnode, *node;
 side_t *bestside;
 int i, totalmem;
 bspbrush_t *brushes;

 for (node = NextNodeFromList(); node; )
 {



  if (numthreads == 1)
   IncreaseNodeCounter();

  brushes = node->brushlist;

  if (numthreads == 1)
  {
   totalmem = WindingMemory() + c_nodememory + c_brushmemory;
   if (totalmem > c_peak_totalbspmemory)
   {
    c_peak_totalbspmemory = totalmem;
   }
   c_nodes++;
  }

  if (drawflag)
  {
   DrawBrushList(brushes, node);
  }

  if (cancelconversion)
  {
   bestside = ((void*)0);
  }
  else
  {

   bestside = SelectSplitSide(brushes, node);
  }

  if (!bestside)
  {

   LeafNode(node, brushes);
   if (node->contents & CONTENTS_SOLID) c_solidleafnodes++;
   if (create_aas)
   {

    FreeBrushList(node->brushlist);
    node->brushlist = ((void*)0);
   }

   if (node->volume)
   {
    FreeBrush(node->volume);
    node->volume = ((void*)0);
   }
   node = NextNodeFromList();
   continue;
  }


  node->side = bestside;
  node->planenum = bestside->planenum & ~1;


  for (i = 0; i < 2; i++)
  {
   newnode = AllocNode();
   newnode->parent = node;
   node->children[i] = newnode;
  }


  SplitBrushList(brushes, node, &node->children[0]->brushlist, &node->children[1]->brushlist);

  CheckBrushLists(node->children[0]->brushlist, node->children[1]->brushlist);

  FreeBrushList(brushes);
  node->brushlist = ((void*)0);


  SplitBrush(node->volume, node->planenum, &node->children[0]->volume,
        &node->children[1]->volume);

  if (!node->children[0]->volume || !node->children[1]->volume)
  {
   Error("child without volume brush");
  }


  if (node->volume)
  {
   FreeBrush(node->volume);
   node->volume = ((void*)0);
  }


  AddNodeToList(node->children[1]);
  node = node->children[0];
 }
 RemoveThread(threadid);
}
