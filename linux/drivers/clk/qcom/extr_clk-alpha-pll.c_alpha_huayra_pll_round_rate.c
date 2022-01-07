
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int BIT (int) ;
 int PLL_HUAYRA_ALPHA_WIDTH ;
 unsigned long alpha_huayra_pll_calc_rate (unsigned long,int,int) ;
 int do_div (int,unsigned long) ;

__attribute__((used)) static unsigned long
alpha_huayra_pll_round_rate(unsigned long rate, unsigned long prate,
       u32 *l, u32 *a)
{
 u64 remainder;
 u64 quotient;

 quotient = rate;
 remainder = do_div(quotient, prate);
 *l = quotient;

 if (!remainder) {
  *a = 0;
  return rate;
 }

 quotient = remainder << PLL_HUAYRA_ALPHA_WIDTH;
 remainder = do_div(quotient, prate);

 if (remainder)
  quotient++;






 if (quotient >= BIT(PLL_HUAYRA_ALPHA_WIDTH - 1))
  *l += 1;

 *a = quotient;
 return alpha_huayra_pll_calc_rate(prate, *l, *a);
}
