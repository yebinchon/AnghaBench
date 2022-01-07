
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__** next; TYPE_2__** nodes; } ;
typedef TYPE_1__ portal_t ;
struct TYPE_6__ {scalar_t__ planenum; TYPE_1__* portals; struct TYPE_6__** children; } ;
typedef TYPE_2__ node_t ;
typedef int FILE ;


 int OutputPortal (TYPE_1__*,int *) ;
 scalar_t__ PLANENUM_LEAF ;

void WriteGLView_r (node_t *node, FILE *glview)
{
 portal_t *p, *nextp;

 if (node->planenum != PLANENUM_LEAF)
 {
  WriteGLView_r (node->children[0], glview);
  WriteGLView_r (node->children[1], glview);
  return;
 }


 for (p=node->portals ; p ; p=nextp)
 {
  if (p->nodes[0] == node)
  {
   OutputPortal (p, glview);
   nextp = p->next[0];
  }
  else
   nextp = p->next[1];
 }
}
