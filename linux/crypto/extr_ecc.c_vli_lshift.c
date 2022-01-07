
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;



__attribute__((used)) static u64 vli_lshift(u64 *result, const u64 *in, unsigned int shift,
        unsigned int ndigits)
{
 u64 carry = 0;
 int i;

 for (i = 0; i < ndigits; i++) {
  u64 temp = in[i];

  result[i] = (temp << shift) | carry;
  carry = temp >> (64 - shift);
 }

 return carry;
}
