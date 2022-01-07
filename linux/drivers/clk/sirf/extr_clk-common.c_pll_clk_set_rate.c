
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pll {unsigned long regofs; } ;
struct clk_hw {int dummy; } ;


 unsigned long BIT (int) ;
 int BUG_ON (int) ;
 int EINVAL ;
 unsigned long MHZ ;
 unsigned long SIRFSOC_CLKC_PLL1_CFG0 ;
 unsigned long SIRFSOC_CLKC_PLL1_CFG1 ;
 unsigned long SIRFSOC_CLKC_PLL1_CFG2 ;
 unsigned long clkc_readl (unsigned long) ;
 int clkc_writel (unsigned long,unsigned long) ;
 int cpu_relax () ;
 struct clk_pll* to_pllclk (struct clk_hw*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pll_clk_set_rate(struct clk_hw *hw, unsigned long rate,
 unsigned long parent_rate)
{
 struct clk_pll *clk = to_pllclk(hw);
 unsigned long fin, nf, nr, od, reg;






 nf = rate / MHZ;
 if (unlikely((rate % MHZ) || nf > BIT(13) || nf < 1))
  return -EINVAL;

 fin = parent_rate;
 BUG_ON(fin < MHZ);

 nr = fin / MHZ;
 BUG_ON((fin % MHZ) || nr > BIT(6));

 od = 1;

 reg = (nf - 1) | ((nr - 1) << 13) | ((od - 1) << 19);
 clkc_writel(reg, clk->regofs);

 reg = clk->regofs + SIRFSOC_CLKC_PLL1_CFG1 - SIRFSOC_CLKC_PLL1_CFG0;
 clkc_writel((nf >> 1) - 1, reg);

 reg = clk->regofs + SIRFSOC_CLKC_PLL1_CFG2 - SIRFSOC_CLKC_PLL1_CFG0;
 while (!(clkc_readl(reg) & BIT(6)))
  cpu_relax();

 return 0;
}
