
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hb_clk {int reg; } ;
struct clk_hw {int dummy; } ;


 int HB_PLL_DIVF_MASK ;
 int HB_PLL_DIVF_SHIFT ;
 int HB_PLL_DIVQ_MASK ;
 int HB_PLL_DIVQ_SHIFT ;
 int HB_PLL_EXT_BYPASS ;
 int HB_PLL_EXT_ENA ;
 int HB_PLL_LOCK ;
 int HB_PLL_LOCK_500 ;
 int HB_PLL_RESET ;
 int clk_pll_calc (unsigned long,unsigned long,int*,int*) ;
 int readl (int ) ;
 struct hb_clk* to_hb_clk (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static int clk_pll_set_rate(struct clk_hw *hwclk, unsigned long rate,
       unsigned long parent_rate)
{
 struct hb_clk *hbclk = to_hb_clk(hwclk);
 u32 divq, divf;
 u32 reg;

 clk_pll_calc(rate, parent_rate, &divq, &divf);

 reg = readl(hbclk->reg);
 if (divf != ((reg & HB_PLL_DIVF_MASK) >> HB_PLL_DIVF_SHIFT)) {

  reg |= HB_PLL_EXT_BYPASS;
  writel(reg | HB_PLL_EXT_BYPASS, hbclk->reg);

  writel(reg | HB_PLL_RESET, hbclk->reg);
  reg &= ~(HB_PLL_DIVF_MASK | HB_PLL_DIVQ_MASK);
  reg |= (divf << HB_PLL_DIVF_SHIFT) | (divq << HB_PLL_DIVQ_SHIFT);
  writel(reg | HB_PLL_RESET, hbclk->reg);
  writel(reg, hbclk->reg);

  while ((readl(hbclk->reg) & HB_PLL_LOCK) == 0)
   ;
  while ((readl(hbclk->reg) & HB_PLL_LOCK_500) == 0)
   ;
  reg |= HB_PLL_EXT_ENA;
  reg &= ~HB_PLL_EXT_BYPASS;
 } else {
  writel(reg | HB_PLL_EXT_BYPASS, hbclk->reg);
  reg &= ~HB_PLL_DIVQ_MASK;
  reg |= divq << HB_PLL_DIVQ_SHIFT;
  writel(reg | HB_PLL_EXT_BYPASS, hbclk->reg);
 }
 writel(reg, hbclk->reg);

 return 0;
}
