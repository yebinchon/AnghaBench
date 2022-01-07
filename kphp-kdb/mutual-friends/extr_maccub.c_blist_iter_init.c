
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* x; int i; } ;
typedef TYPE_1__ blist_iterator ;
typedef int* blist ;


 int blist_iter_next (TYPE_1__*) ;

void blist_iter_init (blist_iterator *it, blist x, int tot_items, int len, int nr) {
  it->x = x;

  int n;

  if (x == ((void*)0)) {
    n = 0;
  } else {
    n = it->x[0];
  }

  int l = 0, r = n + 1;

  while (l + 1 < r) {
    int c = (l + r) >> 1;
    if (it->x[c] <= nr) {
      r = c;
    } else {
      l = c;
    }
  }
  it->i = r - 1;
  blist_iter_next (it);
}
