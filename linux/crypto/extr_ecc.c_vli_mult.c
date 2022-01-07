
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ m_high; scalar_t__ m_low; int member_1; int member_0; } ;
typedef TYPE_1__ uint128_t ;
typedef scalar_t__ u64 ;


 TYPE_1__ add_128_128 (TYPE_1__,TYPE_1__) ;
 TYPE_1__ mul_64_64 (scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static void vli_mult(u64 *result, const u64 *left, const u64 *right,
       unsigned int ndigits)
{
 uint128_t r01 = { 0, 0 };
 u64 r2 = 0;
 unsigned int i, k;




 for (k = 0; k < ndigits * 2 - 1; k++) {
  unsigned int min;

  if (k < ndigits)
   min = 0;
  else
   min = (k + 1) - ndigits;

  for (i = min; i <= k && i < ndigits; i++) {
   uint128_t product;

   product = mul_64_64(left[i], right[k - i]);

   r01 = add_128_128(r01, product);
   r2 += (r01.m_high < product.m_high);
  }

  result[k] = r01.m_low;
  r01.m_low = r01.m_high;
  r01.m_high = r2;
  r2 = 0;
 }

 result[ndigits * 2 - 1] = r01.m_low;
}
