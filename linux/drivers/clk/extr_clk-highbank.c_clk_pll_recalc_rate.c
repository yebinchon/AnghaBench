
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hb_clk {int reg; } ;
struct clk_hw {int dummy; } ;


 unsigned long HB_PLL_DIVF_MASK ;
 unsigned long HB_PLL_DIVF_SHIFT ;
 unsigned long HB_PLL_DIVQ_MASK ;
 unsigned long HB_PLL_DIVQ_SHIFT ;
 unsigned long HB_PLL_EXT_BYPASS ;
 unsigned long readl (int ) ;
 struct hb_clk* to_hb_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_pll_recalc_rate(struct clk_hw *hwclk,
      unsigned long parent_rate)
{
 struct hb_clk *hbclk = to_hb_clk(hwclk);
 unsigned long divf, divq, vco_freq, reg;

 reg = readl(hbclk->reg);
 if (reg & HB_PLL_EXT_BYPASS)
  return parent_rate;

 divf = (reg & HB_PLL_DIVF_MASK) >> HB_PLL_DIVF_SHIFT;
 divq = (reg & HB_PLL_DIVQ_MASK) >> HB_PLL_DIVQ_SHIFT;
 vco_freq = parent_rate * (divf + 1);

 return vco_freq / (1 << divq);
}
