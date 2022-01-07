
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct dpll_data {int idlest_mask; int enable_mask; int idlest_reg; int control_reg; } ;
struct clk_hw_omap {int hw; struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;int (* clk_writel ) (int,int *) ;} ;


 int APLL_FORCE_LOCK ;
 int EBUSY ;
 int EINVAL ;
 int MAX_APLL_WAIT_TRIES ;
 int __ffs (int) ;
 char* clk_hw_get_name (int *) ;
 int pr_debug (char*,char const*,char*,int) ;
 int pr_warn (char*,char const*,char*) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int,int *) ;
 int stub4 (int *) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;
 int udelay (int) ;

__attribute__((used)) static int dra7_apll_enable(struct clk_hw *hw)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);
 int r = 0, i = 0;
 struct dpll_data *ad;
 const char *clk_name;
 u8 state = 1;
 u32 v;

 ad = clk->dpll_data;
 if (!ad)
  return -EINVAL;

 clk_name = clk_hw_get_name(&clk->hw);

 state <<= __ffs(ad->idlest_mask);


 v = ti_clk_ll_ops->clk_readl(&ad->idlest_reg);

 if ((v & ad->idlest_mask) == state)
  return r;

 v = ti_clk_ll_ops->clk_readl(&ad->control_reg);
 v &= ~ad->enable_mask;
 v |= APLL_FORCE_LOCK << __ffs(ad->enable_mask);
 ti_clk_ll_ops->clk_writel(v, &ad->control_reg);

 state <<= __ffs(ad->idlest_mask);

 while (1) {
  v = ti_clk_ll_ops->clk_readl(&ad->idlest_reg);
  if ((v & ad->idlest_mask) == state)
   break;
  if (i > MAX_APLL_WAIT_TRIES)
   break;
  i++;
  udelay(1);
 }

 if (i == MAX_APLL_WAIT_TRIES) {
  pr_warn("clock: %s failed transition to '%s'\n",
   clk_name, (state) ? "locked" : "bypassed");
  r = -EBUSY;
 } else
  pr_debug("clock: %s transition to '%s' in %d loops\n",
    clk_name, (state) ? "locked" : "bypassed", i);

 return r;
}
