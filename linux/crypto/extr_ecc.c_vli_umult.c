
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ m_low; scalar_t__ m_high; int member_0; } ;
typedef TYPE_1__ uint128_t ;
typedef scalar_t__ u64 ;
typedef int u32 ;


 TYPE_1__ add_128_128 (TYPE_1__,TYPE_1__) ;
 TYPE_1__ mul_64_64 (scalar_t__ const,int ) ;

__attribute__((used)) static void vli_umult(u64 *result, const u64 *left, u32 right,
        unsigned int ndigits)
{
 uint128_t r01 = { 0 };
 unsigned int k;

 for (k = 0; k < ndigits; k++) {
  uint128_t product;

  product = mul_64_64(left[k], right);
  r01 = add_128_128(r01, product);

  result[k] = r01.m_low;
  r01.m_low = r01.m_high;
  r01.m_high = 0;
 }
 result[k] = r01.m_low;
 for (++k; k < ndigits * 2; k++)
  result[k] = 0;
}
