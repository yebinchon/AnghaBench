
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* trp_node_ptr ;
struct TYPE_9__ {int size; TYPE_1__* root; } ;
typedef TYPE_2__ treap ;
struct TYPE_8__ {int x; int y; struct TYPE_8__* l; struct TYPE_8__* r; } ;


 TYPE_1__* free_nodes ;
 int free_nodes_cnt ;
 int trp_merge (TYPE_1__**,TYPE_1__*,TYPE_1__*) ;

int trp_del (treap *tr, int x) {
  trp_node_ptr *v = &tr->root;

  while (*v != ((void*)0)) {
    if ((*v)->x == x) {
      trp_node_ptr t = *v;
      trp_merge (v, t->l, t->r);

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
