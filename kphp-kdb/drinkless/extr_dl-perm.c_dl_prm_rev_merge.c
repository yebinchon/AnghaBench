
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_5__ {scalar_t__ y; struct TYPE_5__* xr; struct TYPE_5__* xl; } ;



void dl_prm_rev_merge (dl_prm_ptr *tr, dl_prm_ptr a, dl_prm_ptr b) {
  while (a != ((void*)0) || b != ((void*)0)) {
     if (a == ((void*)0) || (b != ((void*)0) && b->y > a->y)) {
       *tr = b;
       tr = &b->xl;
       b = b->xl;
     } else {
       *tr = a;
       tr = &a->xr;
       a = a->xr;
     }
  }
  *tr = ((void*)0);
}
