
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__** next; TYPE_2__** nodes; } ;
typedef TYPE_1__ portal_t ;
struct TYPE_7__ {scalar_t__ planenum; int cluster; int contents; TYPE_1__* portals; struct TYPE_7__** children; int detail_seperator; } ;
typedef TYPE_2__ node_t ;


 int CONTENTS_SOLID ;
 int FillLeafNumbers_r (TYPE_2__*,int ) ;
 scalar_t__ PLANENUM_LEAF ;
 scalar_t__ Portal_VisFlood (TYPE_1__*) ;
 int num_visclusters ;
 int num_visportals ;

void NumberLeafs_r (node_t *node)
{
 portal_t *p;

 if (node->planenum != PLANENUM_LEAF && !node->detail_seperator)
 {
  node->cluster = -99;
  NumberLeafs_r (node->children[0]);
  NumberLeafs_r (node->children[1]);
  return;
 }



 if ( node->contents & CONTENTS_SOLID )
 {
  node->cluster = -1;
  return;
 }

 FillLeafNumbers_r (node, num_visclusters);
 num_visclusters++;


 for (p = node->portals ; p ; )
 {
  if (p->nodes[0] == node)
  {
   if (Portal_VisFlood (p))
    num_visportals++;
   p = p->next[0];
  }
  else
   p = p->next[1];
 }

}
