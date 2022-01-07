
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__** nodes; struct TYPE_7__** next; } ;
typedef TYPE_1__ portal_t ;
struct TYPE_8__ {int occupied; TYPE_1__* portals; } ;
typedef TYPE_2__ node_t ;


 int P_AddNodeToList (TYPE_2__*) ;
 TYPE_2__* P_NextNodeFromList () ;
 int Portal_EntityFlood (TYPE_1__*,int) ;

void FloodPortals(node_t *firstnode)
{
 node_t *node;
 portal_t *p;
 int s;

 firstnode->occupied = 1;
 P_AddNodeToList(firstnode);

 for (node = P_NextNodeFromList(); node; node = P_NextNodeFromList())
 {
  for (p = node->portals; p; p = p->next[s])
  {
   s = (p->nodes[1] == node);

   if (p->nodes[!s]->occupied) continue;

   if (!Portal_EntityFlood(p, s)) continue;

   p->nodes[!s]->occupied = node->occupied + 1;

   P_AddNodeToList(p->nodes[!s]);
  }
 }
}
