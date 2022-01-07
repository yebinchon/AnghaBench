
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ val; int n; TYPE_3__* it; } ;
typedef TYPE_1__ uni_iterator ;
struct TYPE_5__ {int val; } ;


 int data_iter_val_and_next (TYPE_3__*) ;

int uni_iter_val_and_next (uni_iterator *v) {
  if (v->val == 0) {
    return 0;
  }
  while (1) {
    int bi = -1, b = 0, i = 0;
    for (i = 0; i < v->n; i++) {
      if (v->it[i].val > b) {
        b = v->it[i].val;
        bi = i;
      }
    }

    if (bi >= 0) {
      data_iter_val_and_next (&v->it[bi]);
    }
    if (b != v->val) {
      v->val = b;
      return b;
    }
  }
}
