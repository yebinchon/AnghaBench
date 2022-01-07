
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_7__ {int a; struct TYPE_7__* xl; struct TYPE_7__* xr; } ;


 int dl_prm_rev_merge (TYPE_1__**,TYPE_1__*,TYPE_1__*) ;

dl_prm_ptr dl_prm_rev_del (dl_prm_ptr *v, int x) {


  while (*v != ((void*)0)) {

    if ((*v)->a == x) {
      dl_prm_ptr t = *v;

      dl_prm_rev_merge (v, t->xl, t->xr);

      return t;
    } else if ((*v)->a < x) {
      v = &(*v)->xr;
    } else if ((*v)->a > x) {
      v = &(*v)->xl;
    }
  }
  return ((void*)0);
}
