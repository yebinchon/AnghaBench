
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int* cf_gf128 ;


 int select_u8 (int,int*,int) ;

void cf_gf128_double(const cf_gf128 in, cf_gf128 out)
{
  uint8_t table[2] = { 0x00, 0x87 };
  uint32_t borrow = 0;
  uint32_t inword;

  inword = in[3]; out[3] = (inword << 1) | borrow; borrow = inword >> 31;
  inword = in[2]; out[2] = (inword << 1) | borrow; borrow = inword >> 31;
  inword = in[1]; out[1] = (inword << 1) | borrow; borrow = inword >> 31;
  inword = in[0]; out[0] = (inword << 1) | borrow; borrow = inword >> 31;




  out[3] ^= table[borrow];

}
