
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dpll_data {int idlest_mask; int idlest_reg; } ;
struct clk_hw_omap {int hw; struct dpll_data* dpll_data; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;} ;


 int EINVAL ;
 int MAX_DPLL_WAIT_TRIES ;
 int __ffs (int) ;
 char* clk_hw_get_name (int *) ;
 int pr_debug (char*,char const*,char*,int) ;
 int pr_err (char*,char const*,char*) ;
 int stub1 (int *) ;
 TYPE_1__* ti_clk_ll_ops ;
 int udelay (int) ;

__attribute__((used)) static int _omap3_wait_dpll_status(struct clk_hw_omap *clk, u8 state)
{
 const struct dpll_data *dd;
 int i = 0;
 int ret = -EINVAL;
 const char *clk_name;

 dd = clk->dpll_data;
 clk_name = clk_hw_get_name(&clk->hw);

 state <<= __ffs(dd->idlest_mask);

 while (((ti_clk_ll_ops->clk_readl(&dd->idlest_reg) & dd->idlest_mask)
  != state) && i < MAX_DPLL_WAIT_TRIES) {
  i++;
  udelay(1);
 }

 if (i == MAX_DPLL_WAIT_TRIES) {
  pr_err("clock: %s failed transition to '%s'\n",
         clk_name, (state) ? "locked" : "bypassed");
 } else {
  pr_debug("clock: %s transition to '%s' in %d loops\n",
    clk_name, (state) ? "locked" : "bypassed", i);

  ret = 0;
 }

 return ret;
}
