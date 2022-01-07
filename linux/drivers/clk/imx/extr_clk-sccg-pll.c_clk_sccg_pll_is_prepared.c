
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_sccg_pll {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ PLL_CFG0 ;
 int PLL_PD_MASK ;
 int readl_relaxed (scalar_t__) ;
 struct clk_sccg_pll* to_clk_sccg_pll (struct clk_hw*) ;

__attribute__((used)) static int clk_sccg_pll_is_prepared(struct clk_hw *hw)
{
 struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);

 u32 val = readl_relaxed(pll->base + PLL_CFG0);

 return (val & PLL_PD_MASK) ? 0 : 1;
}
