
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_sccg_pll_setup {int divq; int divr2; int divr1; int divf2; int divf1; int bypass; } ;
struct clk_sccg_pll {scalar_t__ base; struct clk_sccg_pll_setup setup; } ;
struct clk_hw {int dummy; } ;


 int FIELD_PREP (int,int ) ;
 scalar_t__ PLL_CFG0 ;
 scalar_t__ PLL_CFG2 ;
 int PLL_DIVF1_MASK ;
 int PLL_DIVF2_MASK ;
 int PLL_DIVQ_MASK ;
 int PLL_DIVR1_MASK ;
 int PLL_DIVR2_MASK ;
 int SSCG_PLL_BYPASS_MASK ;
 int clk_sccg_pll_wait_lock (struct clk_sccg_pll*) ;
 int readl (scalar_t__) ;
 int readl_relaxed (scalar_t__) ;
 struct clk_sccg_pll* to_clk_sccg_pll (struct clk_hw*) ;
 int writel (int,scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int clk_sccg_pll_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
 struct clk_sccg_pll_setup *setup = &pll->setup;
 u32 val;


 val = readl(pll->base + PLL_CFG0);
 val &= ~SSCG_PLL_BYPASS_MASK;
 val |= FIELD_PREP(SSCG_PLL_BYPASS_MASK, setup->bypass);
 writel(val, pll->base + PLL_CFG0);

 val = readl_relaxed(pll->base + PLL_CFG2);
 val &= ~(PLL_DIVF1_MASK | PLL_DIVF2_MASK);
 val &= ~(PLL_DIVR1_MASK | PLL_DIVR2_MASK | PLL_DIVQ_MASK);
 val |= FIELD_PREP(PLL_DIVF1_MASK, setup->divf1);
 val |= FIELD_PREP(PLL_DIVF2_MASK, setup->divf2);
 val |= FIELD_PREP(PLL_DIVR1_MASK, setup->divr1);
 val |= FIELD_PREP(PLL_DIVR2_MASK, setup->divr2);
 val |= FIELD_PREP(PLL_DIVQ_MASK, setup->divq);
 writel_relaxed(val, pll->base + PLL_CFG2);

 return clk_sccg_pll_wait_lock(pll);
}
