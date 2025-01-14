
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dpll_data {int control_reg; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;} ;


 int OMAP4430_DPLL_REGM4XEN_MASK ;
 unsigned long OMAP4430_REGM4XEN_MULT ;
 unsigned long omap2_get_dpll_rate (struct clk_hw_omap*) ;
 int stub1 (int *) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

unsigned long omap4_dpll_regm4xen_recalc(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);
 u32 v;
 unsigned long rate;
 struct dpll_data *dd;

 if (!clk || !clk->dpll_data)
  return 0;

 dd = clk->dpll_data;

 rate = omap2_get_dpll_rate(clk);


 v = ti_clk_ll_ops->clk_readl(&dd->control_reg);
 if (v & OMAP4430_DPLL_REGM4XEN_MASK)
  rate *= OMAP4430_REGM4XEN_MULT;

 return rate;
}
