
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_sccg_pll {int bypass1; int bypass2; scalar_t__ base; int parent; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ PLL_CFG0 ;
 int SSCG_PLL_BYPASS1_MASK ;
 int SSCG_PLL_BYPASS2_MASK ;
 int readl (scalar_t__) ;
 struct clk_sccg_pll* to_clk_sccg_pll (struct clk_hw*) ;

__attribute__((used)) static u8 clk_sccg_pll_get_parent(struct clk_hw *hw)
{
 struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
 u32 val;
 u8 ret = pll->parent;

 val = readl(pll->base + PLL_CFG0);
 if (val & SSCG_PLL_BYPASS2_MASK)
  ret = pll->bypass2;
 else if (val & SSCG_PLL_BYPASS1_MASK)
  ret = pll->bypass1;
 return ret;
}
