
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int gf_poly_mul2 (int) ;
 int rotr32 (int,int) ;

__attribute__((used)) static uint32_t mix_column(uint32_t x)
{
  uint32_t x2 = gf_poly_mul2(x);
  return x2 ^ rotr32(x ^ x2, 24) ^ rotr32(x, 16) ^ rotr32(x, 8);
}
