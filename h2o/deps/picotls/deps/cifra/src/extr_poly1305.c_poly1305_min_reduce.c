
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void poly1305_min_reduce(uint32_t x[17])
{
  uint32_t carry = 0;
  int i;
  for (i = 0; i < 16; i++)
  {
    carry += x[i];
    x[i] = carry & 0xff;
    carry >>= 8;
  }






  carry += x[16];
  x[16] = carry & 0x03;
  carry = 5 * (carry >> 2);

  for (i = 0; i < 16; i++)
  {
    carry += x[i];
    x[i] = carry & 0xff;
    carry >>= 8;
  }

  x[16] += carry;
}
