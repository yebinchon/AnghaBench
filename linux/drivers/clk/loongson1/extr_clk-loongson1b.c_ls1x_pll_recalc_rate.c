
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;


 int GENMASK (int,int ) ;
 int LS1X_CLK_PLL_FREQ ;
 int OSC ;
 int __raw_readl (int ) ;

__attribute__((used)) static unsigned long ls1x_pll_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 u32 pll, rate;

 pll = __raw_readl(LS1X_CLK_PLL_FREQ);
 rate = 12 + (pll & GENMASK(5, 0));
 rate *= OSC;
 rate >>= 1;

 return rate;
}
