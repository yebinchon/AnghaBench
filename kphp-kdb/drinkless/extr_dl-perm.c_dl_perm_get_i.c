
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_6__ {int len; TYPE_1__* v; } ;
typedef TYPE_2__ dl_perm ;
struct TYPE_5__ {int b; int a; struct TYPE_5__* r; struct TYPE_5__* l; } ;


 int LEN (TYPE_1__*) ;
 int assert (int ) ;

int dl_perm_get_i (dl_perm *p, int i) {
  if (!(0 <= i && i < p->len)) {
    return -1;
  }
  dl_prm_ptr v = p->v;
  while (v != ((void*)0)) {
    int xn = LEN(v->l);
    if (i < xn) {
      v = v->l;
    } else {
      i -= xn;
      if (i < v->b - v->a) {
        return v->a + i;
      }
      i -= v->b - v->a;
      v = v->r;
    }
  }
  assert (0);
}
