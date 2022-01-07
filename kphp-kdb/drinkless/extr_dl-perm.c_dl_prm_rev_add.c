
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_7__ {scalar_t__ y; scalar_t__ a; struct TYPE_7__* xr; struct TYPE_7__* xl; } ;


 int dl_prm_rev_split (TYPE_1__*,scalar_t__,TYPE_1__**,TYPE_1__**) ;

void dl_prm_rev_add (dl_prm_ptr *v, dl_prm_ptr u) {
  while (*v != ((void*)0) && (*v)->y >= u->y) {
    if ((*v)->a < u->a) {
      v = &(*v)->xr;
    } else {
      v = &(*v)->xl;
    }
  }
  dl_prm_rev_split (*v, u->a, &u->xl, &u->xr);
  *v = u;
}
