
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_hw_omap {int flags; int clksel_reg; } ;
struct TYPE_2__ {int (* clk_writel ) (int ,int *) ;int (* clk_readl ) (int *) ;} ;


 int CLOCK_CLKOUTX2 ;
 int OMAP4430_DPLL_CLKOUTX2_GATE_CTRL_MASK ;
 int OMAP4430_DPLL_CLKOUT_GATE_CTRL_MASK ;
 int stub1 (int *) ;
 int stub2 (int ,int *) ;
 TYPE_1__* ti_clk_ll_ops ;

__attribute__((used)) static void omap4_dpllmx_allow_gatectrl(struct clk_hw_omap *clk)
{
 u32 v;
 u32 mask;

 if (!clk)
  return;

 mask = clk->flags & CLOCK_CLKOUTX2 ?
   OMAP4430_DPLL_CLKOUTX2_GATE_CTRL_MASK :
   OMAP4430_DPLL_CLKOUT_GATE_CTRL_MASK;

 v = ti_clk_ll_ops->clk_readl(&clk->clksel_reg);

 v &= ~mask;
 ti_clk_ll_ops->clk_writel(v, &clk->clksel_reg);
}
