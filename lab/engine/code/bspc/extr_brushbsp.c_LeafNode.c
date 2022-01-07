
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int contents; TYPE_4__* brushlist; int expansionbboxes; scalar_t__ modelnum; int planenum; int * side; } ;
typedef TYPE_3__ node_t ;
struct TYPE_11__ {int numsides; TYPE_2__* original; struct TYPE_11__* next; TYPE_1__* sides; } ;
typedef TYPE_4__ bspbrush_t ;
struct TYPE_12__ {int allpresencetypes; } ;
struct TYPE_9__ {int contents; scalar_t__ modelnum; int expansionbbox; } ;
struct TYPE_8__ {scalar_t__ texinfo; } ;


 int CONTENTS_SOLID ;
 int PLANENUM_LEAF ;
 scalar_t__ TEXINFO_NODE ;
 TYPE_5__ cfg ;
 scalar_t__ create_aas ;

void LeafNode(node_t *node, bspbrush_t *brushes)
{
 bspbrush_t *b;
 int i;

 node->side = ((void*)0);
 node->planenum = PLANENUM_LEAF;
 node->contents = 0;

 for (b = brushes; b; b = b->next)
 {


  if (b->original->contents & CONTENTS_SOLID)
  {
   for (i=0 ; i<b->numsides ; i++)
    if (b->sides[i].texinfo != TEXINFO_NODE)
     break;
   if (i == b->numsides)
   {
    node->contents = CONTENTS_SOLID;
    break;
   }
  }
  node->contents |= b->original->contents;
 }

 if (create_aas)
 {
  node->expansionbboxes = 0;
  node->contents = 0;
  for (b = brushes; b; b = b->next)
  {
   node->expansionbboxes |= b->original->expansionbbox;
   node->contents |= b->original->contents;
   if (b->original->modelnum)
    node->modelnum = b->original->modelnum;
  }
  if (node->contents & CONTENTS_SOLID)
  {
   if (node->expansionbboxes != cfg.allpresencetypes)
   {
    node->contents &= ~CONTENTS_SOLID;
   }
  }
 }

 node->brushlist = brushes;
}
