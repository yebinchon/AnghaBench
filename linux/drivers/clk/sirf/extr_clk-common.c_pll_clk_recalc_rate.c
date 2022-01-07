
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pll {int regofs; } ;
struct clk_hw {int dummy; } ;


 int BIT (int) ;
 unsigned long MHZ ;
 int SIRFSOC_CLKC_PLL1_CFG0 ;
 int SIRFSOC_CLKC_PLL1_CFG2 ;
 int WARN_ON (unsigned long) ;
 int clkc_readl (int) ;
 struct clk_pll* to_pllclk (struct clk_hw*) ;

__attribute__((used)) static unsigned long pll_clk_recalc_rate(struct clk_hw *hw,
 unsigned long parent_rate)
{
 unsigned long fin = parent_rate;
 struct clk_pll *clk = to_pllclk(hw);
 u32 regcfg2 = clk->regofs + SIRFSOC_CLKC_PLL1_CFG2 -
  SIRFSOC_CLKC_PLL1_CFG0;

 if (clkc_readl(regcfg2) & BIT(2)) {

  return fin;
 } else {

  u32 cfg0 = clkc_readl(clk->regofs);
  u32 nf = (cfg0 & (BIT(13) - 1)) + 1;
  u32 nr = ((cfg0 >> 13) & (BIT(6) - 1)) + 1;
  u32 od = ((cfg0 >> 19) & (BIT(4) - 1)) + 1;
  WARN_ON(fin % MHZ);
  return fin / MHZ * nf / nr / od * MHZ;
 }
}
