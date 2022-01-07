
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clk_hw {int dummy; } ;


 unsigned long DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;
 unsigned long PLL_FBDIV_MAX ;
 unsigned long PLL_FBDIV_MIN ;

__attribute__((used)) static long zynq_pll_round_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long *prate)
{
 u32 fbdiv;

 fbdiv = DIV_ROUND_CLOSEST(rate, *prate);
 if (fbdiv < PLL_FBDIV_MIN)
  fbdiv = PLL_FBDIV_MIN;
 else if (fbdiv > PLL_FBDIV_MAX)
  fbdiv = PLL_FBDIV_MAX;

 return *prate * fbdiv;
}
