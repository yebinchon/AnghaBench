
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a; int len; int k; int p; int m; int M; int * ptr; } ;
typedef TYPE_1__ golomb_iterator ;
typedef int * golomb ;


 int assert (int) ;
 int compute_golomb_parameter (int,int) ;
 scalar_t__ cur_bit ;
 int golomb_iter_next (TYPE_1__*) ;
 int load_bit () ;

void golomb_iter_init (golomb_iterator *it, golomb x, int tot_items, int len, int r) {
  it->ptr = x;

  if (x == ((void*)0)) {
    it->a = 0;
    it->len = 0;
    return;
  }

  it->k = -1;
  it->p = 1;

  while (it->p < tot_items) {
    it->p += it->p;
    it->k++;
  }

  it->m = ((int) *(it->ptr)++ << 24) + (1 << 23);

  int tmp = 0;
  while (it->k >= 0) {
    if (cur_bit) { tmp += (1 << it->k); }
    load_bit ();
    it->k--;
  }

  it->len = tmp + 1;

  assert (it->len > 0);

  it->a = tot_items + 1;
  it->M = compute_golomb_parameter (tot_items, it->len);

  it->k = 0, it->p = 1;
  while (it->M >= it->p) {
    it->p <<= 1;
    it->k++;
  }
  it->p -= it->M;

  golomb_iter_next (it);

  while (it->a > r) {
    golomb_iter_next (it);
  }
}
