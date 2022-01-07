
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* trp_node_ptr ;
struct TYPE_9__ {int size; TYPE_1__* root; } ;
typedef TYPE_2__ treap ;
struct TYPE_8__ {int y; int x; struct TYPE_8__* r; struct TYPE_8__* l; } ;


 TYPE_1__* get_new_node () ;
 int trp_split (TYPE_1__*,int,TYPE_1__**,TYPE_1__**) ;

void trp_add_or_set (treap *tr, int x, int y) {
  trp_node_ptr *v = &tr->root;

  while (*v != ((void*)0) && ((*v)->y >= y)) {
    if (((*v)->x ^ x) <= 1) {
      (*v)->x = x;
      return;
    } else if ((*v)->x > x) {
      v = &(*v)->r;
    } else if ((*v)->x < x) {
      v = &(*v)->l;
    }
  }
  trp_node_ptr vv = *v;

  while (vv != ((void*)0)) {
    if ((vv->x ^ x) <= 1) {
      vv->x = x;
      return;
    } else if (vv->x > x) {
      vv = vv->r;
    } else if (vv->x < x) {
      vv = vv->l;
    }
  }

  trp_node_ptr u = get_new_node();
  tr->size--;
  u->x = x;
  u->y = y;
  trp_split (*v, x, &u->l, &u->r);
  *v = u;
}
