
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitreader {int m; } ;


 scalar_t__ decode_cur_bit ;
 int decode_load_bit () ;

void bread_huffman_codes (struct bitreader *br, int *l, int N, int *alphabet_size) {
  int i, m = br->m;
  *alphabet_size = 0;
  for (i = 0; i < N; i++) {
    int d = 0;
    if (decode_cur_bit) { d++; }
    decode_load_bit();
    d <<= 1;
    if (decode_cur_bit) { d++; }
    decode_load_bit();
    d <<= 1;
    if (decode_cur_bit) { d++; }
    decode_load_bit();
    d <<= 1;
    if (decode_cur_bit) { d++; }
    decode_load_bit();
    if (d) {
      (*alphabet_size)++;
    }
    l[i] = d;
  }
  br->m = m;
}
