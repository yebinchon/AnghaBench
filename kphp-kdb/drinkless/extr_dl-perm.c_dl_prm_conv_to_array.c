
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_3__ {int a; int b; struct TYPE_3__* r; struct TYPE_3__* l; } ;



int dl_prm_conv_to_array (dl_prm_ptr v, int *a, int n) {
  if (v == ((void*)0)) {
    return 0;
  }
  int ln = dl_prm_conv_to_array (v->l, a, n);
  a += ln;
  n -= ln;

  int x;
  for (x = v->a; x < v->b; x++) {
    if (n) {
      *a++ = x;
      n--;
      ln++;
    }
  }
  ln += dl_prm_conv_to_array (v->r, a, n);
  return ln;
}
