
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_5__ {int a; struct TYPE_5__* xl; struct TYPE_5__* xr; } ;



void dl_prm_rev_split (dl_prm_ptr v, int x, dl_prm_ptr *a, dl_prm_ptr *b) {
  while (v != ((void*)0)) {
    if (v->a < x) {
      *a = v;
      a = &v->xr;
      v = v->xr;
    } else {
      *b = v;
      b = &v->xl;
      v = v->xl;
    }
  }
  *a = *b = ((void*)0);
}
