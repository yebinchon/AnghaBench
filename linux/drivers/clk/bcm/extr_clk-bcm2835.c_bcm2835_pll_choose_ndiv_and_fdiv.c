
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int A2W_PLL_FRAC_BITS ;
 int do_div (int,unsigned long) ;

__attribute__((used)) static void bcm2835_pll_choose_ndiv_and_fdiv(unsigned long rate,
          unsigned long parent_rate,
          u32 *ndiv, u32 *fdiv)
{
 u64 div;

 div = (u64)rate << A2W_PLL_FRAC_BITS;
 do_div(div, parent_rate);

 *ndiv = div >> A2W_PLL_FRAC_BITS;
 *fdiv = div & ((1 << A2W_PLL_FRAC_BITS) - 1);
}
