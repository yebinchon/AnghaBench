
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* treap_node_ptr ;
struct TYPE_6__ {TYPE_1__* root; } ;
typedef TYPE_2__ treap ;
typedef scalar_t__ ll ;
struct TYPE_5__ {scalar_t__ x; struct TYPE_5__* l; struct TYPE_5__* r; } ;



treap_node_ptr treap_fnd (treap *t, ll x) {
  treap_node_ptr v = t->root;

  while (v != ((void*)0)) {
    if (v->x == x) {
      return v;
    } else if (v->x > x) {
      v = v->r;
    } else if (v->x < x) {
      v = v->l;
    }
  }
  return ((void*)0);
}
