
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* x; } ;
typedef TYPE_1__ blist_iterator ;



int blist_iter_has (blist_iterator *it, int val) {
  if (it->x == ((void*)0)) {
    return 0;
  }

  int n = it->x[0];

  if (n <= 8) {
    int i;
    for (i = 1; i <= n; i++) {
      if (it->x[i] == val) {
        return 1;
      }
    }
    return 0;
  } else {
    int l = 1, r = n + 1, c;
    while (l + 1 < r) {
      c = (l + r) / 2;
      if (it->x[c] >= val) {
        l = c;
      } else {
        r = c;
      }
    }
    return it->x[l] == val;
  }
}
