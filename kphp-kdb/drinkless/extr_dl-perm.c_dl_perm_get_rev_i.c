
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_5__ {int n; TYPE_1__* rv; } ;
typedef TYPE_2__ dl_perm ;
struct TYPE_4__ {int a; int b; struct TYPE_4__* xr; int l; struct TYPE_4__* r; struct TYPE_4__* p; struct TYPE_4__* xl; } ;


 int LEN (int ) ;

int dl_perm_get_rev_i (dl_perm *p, int i) {
  if (!(0 <= i && i < p->n)) {
    return -1;
  }


  dl_prm_ptr v = p->rv, u;
  while (v != ((void*)0)) {
    if (i < v->a) {
      v = v->xl;
    } else if (i < v->b) {

      int res = i - v->a + LEN (v->l);
      while ((u = v->p) != ((void*)0)) {
        if (u->r == v) {
          res += LEN(u->l) + u->b - u->a;
        }
        v = u;
      }

      return res;
    } else {
      v = v->xr;
    }
  }
  return -1;

}
