
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* sums; int* used; int code; scalar_t__ d; int mul1; int mul0; } ;
typedef TYPE_1__ perfect_hash ;


 scalar_t__ bits_cnt (int) ;
 int get_bit (int ,int) ;
 int poly_h (long long,int ,scalar_t__) ;

int ph_h (perfect_hash *h, long long s) {
  int h0 = poly_h (s, h->mul0, h->d),
      h1 = poly_h (s, h->mul1, h->d);

  h1 += h->d;

  int i;
  if (get_bit (h->code, h0) ^ get_bit (h->code, h1)) {
    i = h1;
  } else {
    i = h0;
  }



  int res = 0;
  res = h->sums[i >> 6];

  int left = (i & 63);
  i = (i >> 5) & -2;
  if (left >= 32) {
    res += bits_cnt (h->used[i++]);
    left -= 32;
  }

  res += bits_cnt (h->used[i] & ((1 << left) - 1));
  return res;
}
