
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ planenum; int contents; int detail_seperator; struct TYPE_5__** children; TYPE_2__* brushlist; scalar_t__ faces; } ;
typedef TYPE_1__ node_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ bspbrush_t ;


 int CONTENTS_LADDER ;
 int CONTENTS_SOLID ;
 int Error (char*) ;
 int FreeMemory (TYPE_1__*) ;
 scalar_t__ PLANENUM_LEAF ;
 int c_pruned ;
 scalar_t__ create_aas ;

void Tree_PruneNodes_r (node_t *node)
{
 bspbrush_t *b, *next;

 if (node->planenum == PLANENUM_LEAF) return;

 Tree_PruneNodes_r (node->children[0]);
 Tree_PruneNodes_r (node->children[1]);

 if (create_aas)
 {
  if ((node->children[0]->contents & CONTENTS_LADDER) ||
    (node->children[1]->contents & CONTENTS_LADDER)) return;
 }

 if ((node->children[0]->contents & CONTENTS_SOLID)
  && (node->children[1]->contents & CONTENTS_SOLID))
 {
  if (node->faces)
   Error ("node->faces seperating CONTENTS_SOLID");
  if (node->children[0]->faces || node->children[1]->faces)
   Error ("!node->faces with children");

  node->planenum = PLANENUM_LEAF;
  node->contents = CONTENTS_SOLID;
  node->detail_seperator = 0;

  if (node->brushlist)
   Error ("PruneNodes: node->brushlist");

  node->brushlist = node->children[1]->brushlist;

  for (b = node->children[0]->brushlist; b; b = next)
  {
   next = b->next;
   b->next = node->brushlist;
   node->brushlist = b;
  }

  FreeMemory(node->children[0]);
  FreeMemory(node->children[1]);

  c_pruned += 2;
 }
}
