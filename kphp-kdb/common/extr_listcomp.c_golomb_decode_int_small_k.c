
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitreader {int m; } ;
struct list_decoder {int last; scalar_t__ M; struct bitreader br; } ;


 scalar_t__ decode_cur_bit ;
 int decode_load_bit () ;

__attribute__((used)) static int golomb_decode_int_small_k (struct list_decoder *dec) {
  struct bitreader *br = &dec->br;
  register int m = br->m;
  int a = dec->last;
  while (decode_cur_bit) {
    a += dec->M;
    decode_load_bit();
  }
  decode_load_bit();
  br->m = m;
  return dec->last = a + 1;
}
