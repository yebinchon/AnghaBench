
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int * cf_gf128 ;


 int write32_be (int ,int *) ;

void cf_gf128_tobytes_be(const cf_gf128 in, uint8_t out[16])
{
  write32_be(in[0], out + 0);
  write32_be(in[1], out + 4);
  write32_be(in[2], out + 8);
  write32_be(in[3], out + 12);
}
