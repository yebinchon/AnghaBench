
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* cf_gf128 ;



void cf_gf128_add(const cf_gf128 x, const cf_gf128 y, cf_gf128 out)
{
  out[0] = x[0] ^ y[0];
  out[1] = x[1] ^ y[1];
  out[2] = x[2] ^ y[2];
  out[3] = x[3] ^ y[3];
}
