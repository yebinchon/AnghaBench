
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_3__ {struct TYPE_3__* p; int r; int l; scalar_t__ a; scalar_t__ b; scalar_t__ len; } ;


 scalar_t__ LEN (int ) ;

void dl_prm_fix (dl_prm_ptr t) {
  while (t != ((void*)0)) {
    t->len = t->b - t->a + LEN(t->l) + LEN(t->r);
    t = t->p;
  }
}
