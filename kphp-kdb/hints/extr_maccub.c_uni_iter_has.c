
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int * it; } ;
typedef TYPE_1__ uni_iterator ;


 scalar_t__ data_iter_has (int *,int) ;

int uni_iter_has (uni_iterator *it, int val) {
  int i;

  for (i = 0; i < it->n; i++) {
    if (data_iter_has (&it->it[i], val)) {
      return 1;
    }
  }

  return 0;
}
