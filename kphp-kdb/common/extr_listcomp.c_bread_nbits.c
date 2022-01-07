
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitreader {int m; } ;


 int assert (int) ;
 scalar_t__ decode_cur_bit ;
 int decode_load_bit () ;

unsigned int bread_nbits (struct bitreader *br, int n) {
  assert (!(n & -32));
  unsigned int d = 0;
  int m = br->m;
  while (n--) {
    d <<= 1;
    if (decode_cur_bit) {
      d++;
    }
    decode_load_bit();
  }
  br->m = m;
  return d;
}
