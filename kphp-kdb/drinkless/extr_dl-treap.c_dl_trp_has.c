
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* dl_trp_node_ptr ;
struct TYPE_5__ {TYPE_1__* root; } ;
typedef TYPE_2__ dl_treap ;
struct TYPE_4__ {int x; struct TYPE_4__* l; struct TYPE_4__* r; } ;



int dl_trp_has (dl_treap tr, int x) {

  dl_trp_node_ptr v = tr.root;

  while (v != ((void*)0)) {
    if ((v->x ^ x) <= 1) {
      return v->x & 1 ? 1 : -1;
    } else if (v->x > x) {
      v = v->r;
    } else if (v->x < x) {
      v = v->l;
    }
  }
  return 0;
}
