
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* wkey_ptr ;
struct TYPE_5__ {scalar_t__ y; struct TYPE_5__* r; struct TYPE_5__* l; } ;



void trp_merge (wkey_ptr *tr, wkey_ptr a, wkey_ptr b) {
  while (a != ((void*)0) || b != ((void*)0)) {
     if (a == ((void*)0) || (b != ((void*)0) && b->y > a->y)) {
       *tr = b;
       tr = &b->l;
       b = b->l;
     } else {
       *tr = a;
       tr = &a->r;
       a = a->r;
     }
  }
  *tr = ((void*)0);
}
