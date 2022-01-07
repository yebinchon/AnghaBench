
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ planenum; int contents; int cluster; struct TYPE_3__** children; } ;
typedef TYPE_1__ node_t ;


 int CONTENTS_SOLID ;
 scalar_t__ PLANENUM_LEAF ;

void FillLeafNumbers_r (node_t *node, int num)
{
 if (node->planenum == PLANENUM_LEAF)
 {
  if (node->contents & CONTENTS_SOLID)
   node->cluster = -1;
  else
   node->cluster = num;
  return;
 }
 node->cluster = num;
 FillLeafNumbers_r (node->children[0], num);
 FillLeafNumbers_r (node->children[1], num);
}
