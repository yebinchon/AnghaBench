
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* dl_trp_node_ptr ;
struct TYPE_3__ {struct TYPE_3__* r; int x; struct TYPE_3__* l; } ;



int dl_trp_conv_to_array (dl_trp_node_ptr v, int *a, int n) {
  if (v == ((void*)0)) {
    return 0;
  }
  int ln = dl_trp_conv_to_array (v->l, a, n);
  a += ln;
  n -= ln;
  if (n) {
    *a++ = v->x;
    n--;
    ln++;
  }
  ln += dl_trp_conv_to_array (v->r, a, n);
  return ln;
}
