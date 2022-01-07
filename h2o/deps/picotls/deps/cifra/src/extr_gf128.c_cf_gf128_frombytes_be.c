
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int * cf_gf128 ;


 int read32_be (int const*) ;

void cf_gf128_frombytes_be(const uint8_t in[16], cf_gf128 out)
{
  out[0] = read32_be(in + 0);
  out[1] = read32_be(in + 4);
  out[2] = read32_be(in + 8);
  out[3] = read32_be(in + 12);
}
