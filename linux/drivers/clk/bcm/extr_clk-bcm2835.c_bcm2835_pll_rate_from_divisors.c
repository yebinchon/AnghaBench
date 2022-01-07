
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u64 ;
typedef long u32 ;


 long A2W_PLL_FRAC_BITS ;
 int do_div (long,long) ;

__attribute__((used)) static long bcm2835_pll_rate_from_divisors(unsigned long parent_rate,
        u32 ndiv, u32 fdiv, u32 pdiv)
{
 u64 rate;

 if (pdiv == 0)
  return 0;

 rate = (u64)parent_rate * ((ndiv << A2W_PLL_FRAC_BITS) + fdiv);
 do_div(rate, pdiv);
 return rate >> A2W_PLL_FRAC_BITS;
}
