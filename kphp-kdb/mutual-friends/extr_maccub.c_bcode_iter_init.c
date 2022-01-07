
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i; int k; int len; int * ptr; } ;
typedef TYPE_1__ bcode_iterator ;
typedef int * bcode ;


 int assert (int ) ;
 int bcode_iter_get_val (TYPE_1__*,int) ;
 int bcode_iter_next (TYPE_1__*) ;

void bcode_iter_init (bcode_iterator *it, bcode x, int tot_items, int len, int nr) {
  it->ptr = x;
  it->i = -1;

  it->k = 0;
  int p = 1;

  while (p <= tot_items) {
    p += p;
    it->k++;
  }

  if (it->k > 0) {

    it->len = 8 * len / it->k;
  } else {
    assert (x == ((void*)0));
    it->len = 0;
  }

  int n = it->len;
  int l = -1, r = n;

  while (l + 1 < r) {
    int c = (l + r) >> 1;
    if (bcode_iter_get_val (it, c) <= nr) {
      r = c;
    } else {
      l = c;
    }
  }
  it->i = r - 1;
  bcode_iter_next (it);
}
