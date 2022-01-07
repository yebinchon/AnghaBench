
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_clk_pll {scalar_t__ pll_offset; scalar_t__ reg; } ;
struct clk_hw {int dummy; } ;


 int REGSPEC_RESET_F1_MASK ;
 int clk_hw_get_name (struct clk_hw*) ;
 int pr_debug (char*,int ,char*) ;
 struct xgene_clk_pll* to_xgene_clk_pll (struct clk_hw*) ;
 int xgene_clk_read (scalar_t__) ;

__attribute__((used)) static int xgene_clk_pll_is_enabled(struct clk_hw *hw)
{
 struct xgene_clk_pll *pllclk = to_xgene_clk_pll(hw);
 u32 data;

 data = xgene_clk_read(pllclk->reg + pllclk->pll_offset);
 pr_debug("%s pll %s\n", clk_hw_get_name(hw),
  data & REGSPEC_RESET_F1_MASK ? "disabled" : "enabled");

 return data & REGSPEC_RESET_F1_MASK ? 0 : 1;
}
