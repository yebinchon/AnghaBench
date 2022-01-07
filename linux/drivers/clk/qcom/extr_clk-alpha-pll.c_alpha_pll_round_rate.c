
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int ALPHA_SHIFT (int) ;
 unsigned long alpha_pll_calc_rate (unsigned long,int,int,int) ;
 int do_div (int,unsigned long) ;

__attribute__((used)) static unsigned long
alpha_pll_round_rate(unsigned long rate, unsigned long prate, u32 *l, u64 *a,
       u32 alpha_width)
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


 quotient = remainder << ALPHA_SHIFT(alpha_width);

 remainder = do_div(quotient, prate);

 if (remainder)
  quotient++;

 *a = quotient;
 return alpha_pll_calc_rate(prate, *l, *a, alpha_width);
}
