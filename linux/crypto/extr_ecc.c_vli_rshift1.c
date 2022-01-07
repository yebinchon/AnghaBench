
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static void vli_rshift1(u64 *vli, unsigned int ndigits)
{
 u64 *end = vli;
 u64 carry = 0;

 vli += ndigits;

 while (vli-- > end) {
  u64 temp = *vli;
  *vli = (temp >> 1) | carry;
  carry = temp << 63;
 }
}
