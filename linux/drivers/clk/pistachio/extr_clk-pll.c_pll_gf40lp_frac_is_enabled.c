
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pistachio_clk_pll {int dummy; } ;
struct clk_hw {int dummy; } ;


 int PLL_CTRL3 ;
 int PLL_FRAC_CTRL3_PD ;
 int pll_readl (struct pistachio_clk_pll*,int ) ;
 struct pistachio_clk_pll* to_pistachio_pll (struct clk_hw*) ;

__attribute__((used)) static int pll_gf40lp_frac_is_enabled(struct clk_hw *hw)
{
 struct pistachio_clk_pll *pll = to_pistachio_pll(hw);

 return !(pll_readl(pll, PLL_CTRL3) & PLL_FRAC_CTRL3_PD);
}
