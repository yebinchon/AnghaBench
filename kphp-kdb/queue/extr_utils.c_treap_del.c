
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* treap_node_ptr ;
struct TYPE_9__ {int size; TYPE_1__* root; } ;
typedef TYPE_2__ treap ;
typedef scalar_t__ ll ;
struct TYPE_8__ {scalar_t__ x; int y; struct TYPE_8__* l; struct TYPE_8__* r; } ;


 TYPE_1__* free_nodes ;
 int free_nodes_cnt ;
 int treap_merge (TYPE_1__**,TYPE_1__*,TYPE_1__*) ;

int treap_del (treap *tr, ll x) {
  treap_node_ptr *v = &tr->root;

  while (*v != ((void*)0)) {
    if ((*v)->x == x) {
      treap_node_ptr t = *v;
      treap_merge (v, t->l, t->r);

      t->r = ((void*)0);
      t->l = free_nodes;
      free_nodes = t;
      free_nodes_cnt++;
      tr->size++;

      return t->y;
    } else if ((*v)->x > x) {
      v = &(*v)->r;
    } else if ((*v)->x < x) {
      v = &(*v)->l;
    }
  }
  return 0;
}
