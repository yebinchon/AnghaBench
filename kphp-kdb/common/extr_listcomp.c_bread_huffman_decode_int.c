
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitreader {int m; } ;


 int HUFFMAN_MAX_CODE_LENGTH ;
 scalar_t__ decode_cur_bit ;
 int decode_load_bit () ;

int bread_huffman_decode_int (struct bitreader *br, int *firstcode ,int *symbols) {
  int m = br->m, l, v = 0;
  if (decode_cur_bit) {
    v++;
  }
  decode_load_bit();
  l = 1;
  while (v < firstcode[l]) {
    v <<= 1;
    if (decode_cur_bit) {
      v++;
    }
    decode_load_bit();
    l++;
  }
  br->m = m;
  return symbols[(HUFFMAN_MAX_CODE_LENGTH + 1) * (v - firstcode[l]) + l];
}
