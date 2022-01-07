
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int golomb ;


 int assert (int) ;
 int compute_golomb_parameter (int,int) ;
 int golomb_decode_list (int ,int,int,int*) ;

int golomb_encode_list (int *P, int len, int tot_items, unsigned char *res) {
  assert (len > 0);

  int k = -1, p = 1;
  while (p < tot_items) {
    p += p;
    k++;
  }

  int m = 0x80;
  unsigned char *ptr = res;
  *ptr = 0;

  int tmp = len - 1;
  while (k >= 0) {
    if (!m) { *++ptr = 0; m = 0x80; }
    if ((tmp >> k) & 1) { *ptr += m; }
    m >>= 1;
    k--;
  }

  int M = compute_golomb_parameter (tot_items, len);

  k = 31, p = 1;
  while (p <= M) {
    p += p;
    k--;
  }
  p -= M;

  int a = tot_items + 1, d;

  while (len > 0) {
    len--;
    d = a - *P;
    a -= d;

    P++;
    assert (d > 0);
    d--;




    while (d >= M) {
      if (!m) { *++ptr = 0x80; m = 0x40; }
      else { *ptr += m; m >>= 1; }
      d -= M;
    }
    if (!m) { *++ptr = 0; m = 0x40; }
    else { m >>= 1; }
    if (d < p) {
      d = ((4*d + 2) << k);
    } else {
      d = ((2*(d + p) + 1) << k);
    }
    while (d != (-1 << 31)) {
      if (!m) { *++ptr = 0; m = 0x80; }
      if (d < 0) { *ptr += m; }
      d <<= 1;
      m >>= 1;
    }
  }
  if (m != 0x80) { ptr++; }
  a = ptr - res;
  golomb_decode_list ((golomb)res, tot_items, a, P - tmp - 1);

  return a;
}
