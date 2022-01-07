
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitreader {int m; } ;


 unsigned int bread_nbits (struct bitreader*,int) ;
 scalar_t__ decode_cur_bit ;
 int decode_load_bit () ;

unsigned int bread_gamma_code (struct bitreader *br) {
  int k = 0, m = br->m;
  while (decode_cur_bit) {
    k++;
    decode_load_bit();
  }
  decode_load_bit();
  br->m = m;
  return (1U << k) | bread_nbits (br, k);
}
