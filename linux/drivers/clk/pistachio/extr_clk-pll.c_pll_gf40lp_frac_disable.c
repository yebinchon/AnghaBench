
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pistachio_clk_pll {int dummy; } ;
struct clk_hw {int dummy; } ;


 int PLL_CTRL3 ;
 int PLL_FRAC_CTRL3_PD ;
 int pll_readl (struct pistachio_clk_pll*,int ) ;
 int pll_writel (struct pistachio_clk_pll*,int ,int ) ;
 struct pistachio_clk_pll* to_pistachio_pll (struct clk_hw*) ;

__attribute__((used)) static void pll_gf40lp_frac_disable(struct clk_hw *hw)
{
 struct pistachio_clk_pll *pll = to_pistachio_pll(hw);
 u32 val;

 val = pll_readl(pll, PLL_CTRL3);
 val |= PLL_FRAC_CTRL3_PD;
 pll_writel(pll, val, PLL_CTRL3);
}
