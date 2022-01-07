
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * golomb ;


 int LEN_BITS ;
 scalar_t__ cur_bit ;
 int load_bit () ;

int golomb_max_size (golomb ptr, int tot_items, int len) {
  if (ptr == ((void*)0)) {
    return 0;
  }

  int k = -1, p = 1;
  while (p < tot_items) {
    p += p;
    k++;
  }
  k = LEN_BITS;
  p = 1 << (LEN_BITS + 1);

  int m = ((int) *ptr++ << 24) + (1 << 23);

  int tmp = 0;
  while (k >= 0) {
    if (cur_bit) { tmp += (1 << k); }
    load_bit ();
    k--;
  }

  return tmp;
}
