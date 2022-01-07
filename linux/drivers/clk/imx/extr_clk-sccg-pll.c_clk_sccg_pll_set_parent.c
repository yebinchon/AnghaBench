
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int bypass; } ;
struct clk_sccg_pll {scalar_t__ base; TYPE_1__ setup; } ;
struct clk_hw {int dummy; } ;


 int FIELD_PREP (int ,int ) ;
 scalar_t__ PLL_CFG0 ;
 int SSCG_PLL_BYPASS_MASK ;
 int clk_sccg_pll_wait_lock (struct clk_sccg_pll*) ;
 int readl (scalar_t__) ;
 struct clk_sccg_pll* to_clk_sccg_pll (struct clk_hw*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int clk_sccg_pll_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
 u32 val;

 val = readl(pll->base + PLL_CFG0);
 val &= ~SSCG_PLL_BYPASS_MASK;
 val |= FIELD_PREP(SSCG_PLL_BYPASS_MASK, pll->setup.bypass);
 writel(val, pll->base + PLL_CFG0);

 return clk_sccg_pll_wait_lock(pll);
}
