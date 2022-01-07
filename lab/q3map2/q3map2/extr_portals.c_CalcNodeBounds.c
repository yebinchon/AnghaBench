
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* winding; TYPE_3__** nodes; struct TYPE_6__** next; } ;
typedef TYPE_2__ portal_t ;
struct TYPE_7__ {int maxs; int mins; TYPE_2__* portals; } ;
typedef TYPE_3__ node_t ;
struct TYPE_5__ {int numpoints; int * p; } ;


 int AddPointToBounds (int ,int ,int ) ;
 int ClearBounds (int ,int ) ;

void CalcNodeBounds( node_t *node ){
 portal_t *p;
 int s;
 int i;


 ClearBounds( node->mins, node->maxs );
 for ( p = node->portals ; p ; p = p->next[s] )
 {
  s = ( p->nodes[1] == node );
  for ( i = 0 ; i < p->winding->numpoints ; i++ )
   AddPointToBounds( p->winding->p[i], node->mins, node->maxs );
 }
}
