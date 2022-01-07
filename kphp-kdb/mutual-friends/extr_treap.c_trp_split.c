
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* trp_node_ptr ;
struct TYPE_5__ {int x; struct TYPE_5__* l; struct TYPE_5__* r; } ;



void trp_split (trp_node_ptr v, int x, trp_node_ptr *a, trp_node_ptr *b) {
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
