
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned int vli_num_digits (int const*,unsigned int) ;

__attribute__((used)) static unsigned int vli_num_bits(const u64 *vli, unsigned int ndigits)
{
 unsigned int i, num_digits;
 u64 digit;

 num_digits = vli_num_digits(vli, ndigits);
 if (num_digits == 0)
  return 0;

 digit = vli[num_digits - 1];
 for (i = 0; digit; i++)
  digit >>= 1;

 return ((num_digits - 1) * 64 + i);
}
