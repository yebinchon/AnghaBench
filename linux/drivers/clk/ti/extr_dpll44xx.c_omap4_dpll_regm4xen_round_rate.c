
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpll_data {int last_rounded_m4xen; unsigned long last_rounded_rate; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;


 long EINVAL ;
 unsigned long OMAP4430_REGM4XEN_MULT ;
 long omap2_dpll_round_rate (struct clk_hw*,unsigned long,int *) ;
 int omap4_dpll_lpmode_recalc (struct dpll_data*) ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

long omap4_dpll_regm4xen_round_rate(struct clk_hw *hw,
        unsigned long target_rate,
        unsigned long *parent_rate)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);
 struct dpll_data *dd;
 long r;

 if (!clk || !clk->dpll_data)
  return -EINVAL;

 dd = clk->dpll_data;

 dd->last_rounded_m4xen = 0;





 r = omap2_dpll_round_rate(hw, target_rate, ((void*)0));
 if (r != ~0)
  goto out;






 r = omap2_dpll_round_rate(hw, target_rate / OMAP4430_REGM4XEN_MULT,
      ((void*)0));
 if (r == ~0)
  return r;

 dd->last_rounded_rate *= OMAP4430_REGM4XEN_MULT;
 dd->last_rounded_m4xen = 1;

out:
 omap4_dpll_lpmode_recalc(dd);

 return dd->last_rounded_rate;
}
