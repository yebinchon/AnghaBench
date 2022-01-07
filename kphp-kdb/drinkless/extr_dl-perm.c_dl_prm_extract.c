
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_8__ {int b; int a; int len; struct TYPE_8__* r; struct TYPE_8__* p; struct TYPE_8__* l; } ;


 int LEN (TYPE_1__*) ;
 int assert (int ) ;
 int dl_prm_fix (TYPE_1__*) ;

void dl_prm_extract (dl_prm_ptr v, dl_prm_ptr *a, dl_prm_ptr *b, dl_prm_ptr *m, int x) {
  assert (v != ((void*)0));

  dl_prm_ptr pa = ((void*)0), pb = ((void*)0);

  while (v != ((void*)0)) {

    int xn = LEN(v->l);
    if (x < xn) {
      v->p = pb;
      pb = v;

      *b = v;
      b = &v->l;
      v = v->l;
    } else {
      x -= xn;
      if (x < v->b - v->a) {

        *a = v->l;
        if (*a) {
          (*a)->p = pa;
        }

        *b = v->r;
        if (*b) {
          (*b)->p = pb;
        }

        *m = v;
        v->l = v->r = v->p = ((void*)0);
        v->len = v->b - v->a;

        dl_prm_fix (pa);
        dl_prm_fix (pb);
        return;
      }
      x -= v->b - v->a;

      v->p = pa;
      pa = v;

      *a = v;
      a = &v->r;
      v = v->r;
    }

  }
  assert (0);
}
