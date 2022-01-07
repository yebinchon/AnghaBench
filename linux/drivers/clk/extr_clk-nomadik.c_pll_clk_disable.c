
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pll {int id; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ SRC_PLLCR ;
 int SRC_PLLCR_PLL1EN ;
 int SRC_PLLCR_PLL1OVER ;
 int SRC_PLLCR_PLL2EN ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ src_base ;
 int src_lock ;
 struct clk_pll* to_pll (struct clk_hw*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void pll_clk_disable(struct clk_hw *hw)
{
 struct clk_pll *pll = to_pll(hw);
 u32 val;

 spin_lock(&src_lock);
 val = readl(src_base + SRC_PLLCR);
 if (pll->id == 1) {
  if (val & SRC_PLLCR_PLL1OVER) {
   val &= ~SRC_PLLCR_PLL1EN;
   writel(val, src_base + SRC_PLLCR);
  }
 } else if (pll->id == 2) {
  val &= ~SRC_PLLCR_PLL2EN;
  writel(val, src_base + SRC_PLLCR);
 }
 spin_unlock(&src_lock);
}
