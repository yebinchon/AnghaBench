
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* winding; TYPE_2__** nodes; struct TYPE_8__** next; } ;
typedef TYPE_1__ portal_t ;
struct TYPE_9__ {scalar_t__ planenum; TYPE_1__* portals; struct TYPE_9__** children; } ;
typedef TYPE_2__ node_t ;


 int FreePortal (TYPE_1__*) ;
 scalar_t__ MemorySize (TYPE_1__*) ;
 scalar_t__ PLANENUM_LEAF ;
 int RemovePortalFromNode (TYPE_1__*,TYPE_2__*) ;
 int freedtreemem ;

void Tree_FreePortals_r (node_t *node)
{
 portal_t *p, *nextp;
 int s;


 if (node->planenum != PLANENUM_LEAF)
 {
  Tree_FreePortals_r(node->children[0]);
  Tree_FreePortals_r(node->children[1]);
 }


 for (p = node->portals; p; p = nextp)
 {
  s = (p->nodes[1] == node);
  nextp = p->next[s];

  RemovePortalFromNode (p, p->nodes[!s]);




  FreePortal(p);
 }
 node->portals = ((void*)0);
}
