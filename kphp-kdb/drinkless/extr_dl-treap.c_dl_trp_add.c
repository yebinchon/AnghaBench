
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* dl_trp_node_ptr ;
struct TYPE_9__ {int size; TYPE_1__* root; } ;
typedef TYPE_2__ dl_treap ;
struct TYPE_8__ {int y; int x; struct TYPE_8__* r; struct TYPE_8__* l; } ;


 int dl_trp_split (TYPE_1__*,int,TYPE_1__**,TYPE_1__**) ;
 TYPE_1__* get_new_node () ;

void dl_trp_add (dl_treap *tr, int x, int y) {
  dl_trp_node_ptr *v = &tr->root;

  while (*v != ((void*)0) && (*v)->y >= y) {
    if ((*v)->x > x) {
      v = &(*v)->r;
    } else {
      v = &(*v)->l;
    }
  }
  dl_trp_node_ptr u = get_new_node();
  tr->size--;
  u->x = x;
  u->y = y;
  dl_trp_split (*v, x, &u->l, &u->r);
  *v = u;
}
