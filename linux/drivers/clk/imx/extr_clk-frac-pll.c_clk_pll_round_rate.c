
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;


 int PLL_FRAC_DENOM ;
 int do_div (int,int) ;

__attribute__((used)) static long clk_pll_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *prate)
{
 u64 parent_rate = *prate;
 u32 divff, divfi;
 u64 temp64;

 parent_rate *= 8;
 rate *= 2;
 temp64 = rate;
 do_div(temp64, parent_rate);
 divfi = temp64;
 temp64 = rate - divfi * parent_rate;
 temp64 *= PLL_FRAC_DENOM;
 do_div(temp64, parent_rate);
 divff = temp64;

 temp64 = parent_rate;
 temp64 *= divff;
 do_div(temp64, PLL_FRAC_DENOM);

 rate = parent_rate * divfi + temp64;

 return rate / 2;
}
