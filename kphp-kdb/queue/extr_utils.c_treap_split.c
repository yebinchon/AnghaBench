
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* treap_node_ptr ;
typedef scalar_t__ ll ;
struct TYPE_5__ {scalar_t__ x; struct TYPE_5__* l; struct TYPE_5__* r; } ;



void treap_split (treap_node_ptr v, ll x, treap_node_ptr *a, treap_node_ptr *b) {
  while (v != ((void*)0)) {
    if (v->x > x) {
      *a = v;
      a = &v->r;
      v = v->r;
    } else {
      *b = v;
      b = &v->l;
      v = v->l;
    }
  }
  *a = *b = ((void*)0);
}
