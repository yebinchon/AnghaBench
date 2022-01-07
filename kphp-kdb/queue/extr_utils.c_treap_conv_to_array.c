
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* treap_node_ptr ;
struct TYPE_6__ {int y; int x; } ;
typedef TYPE_2__ pli ;
struct TYPE_5__ {struct TYPE_5__* r; int val; int x; struct TYPE_5__* l; } ;



int treap_conv_to_array (treap_node_ptr v, pli *a, int n) {
  if (v == ((void*)0)) {
    return 0;
  }
  int ln = treap_conv_to_array (v->l, a, n);
  a += ln;
  n -= ln;
  if (n) {
    a->x = v->x;
    a->y = v->val;
    a++;
    n--;
    ln++;
  }
  ln += treap_conv_to_array (v->r, a, n);
  return ln;
}
