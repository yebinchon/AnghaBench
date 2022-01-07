
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int planenum; struct TYPE_3__* parent; } ;
typedef TYPE_1__ node_t ;


 int Error (char*) ;

void CheckPlaneAgainstParents (int pnum, node_t *node)
{
 node_t *p;

 for (p = node->parent; p; p = p->parent)
 {
  if (p->planenum == pnum) Error("Tried parent");
 }
}
