
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* golomb ;


 int LEN_BITS ;
 int assert (int) ;
 int compute_golomb_parameter (int,int) ;
 scalar_t__ cur_bit ;
 int load_bit () ;

int _golomb_decode_list (golomb ptr, int tot_items, int bytes, int *P) {
  const char *end = ptr + bytes;

  int k = LEN_BITS, p = 1 << (LEN_BITS + 1);

  int m = ((int) *ptr++ << 24) + (1 << 23);

  int tmp = 0;
  while (k >= 0) {
    if (cur_bit) { tmp += (1 << k); }
    load_bit ();
    k--;
  }

  int len = tmp;




  int a = tot_items + len + 1, M = compute_golomb_parameter (tot_items + len, len);
  k = 0, p = 1;
  while (M >= p) {
    p <<= 1;
    k++;
  }
  p -= M;

  while (len--) {
    int d = 0, i;
    while (cur_bit) {
      a -= M;
      load_bit();
    }
    load_bit();
    for (i = k; i > 1; i--) {
      d <<= 1;
      if (cur_bit) {
        d++;
      }
      load_bit();
    }
    if (d >= p) {
      d <<= 1;
      if (cur_bit) {
        d++;
      }
      load_bit();
      d -= p;
    }
    a -= d;

    assert (a == *P);
    P++;
  }
  if (m & (1 << 23)) { ptr--; }
  assert (ptr == end);

  return tmp;


}
