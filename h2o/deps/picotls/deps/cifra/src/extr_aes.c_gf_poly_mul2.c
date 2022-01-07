
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t gf_poly_mul2(uint32_t x)
{
  return
    ((x & 0x7f7f7f7f) << 1) ^
    (((x & 0x80808080) >> 7) * 0x1b);
}
