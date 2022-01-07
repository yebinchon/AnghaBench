
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dpll_data {int enable_mask; int idlest_mask; int idlest_reg; int control_reg; } ;
struct clk_hw_omap {int hw; struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;int (* clk_writel ) (int,int *) ;} ;


 int EBUSY ;
 int MAX_APLL_WAIT_TRIES ;
 int OMAP2_EN_APLL_LOCKED ;
 int __ffs (int) ;
 int clk_hw_get_name (int *) ;
 int pr_warn (char*,int ) ;
 int stub1 (int *) ;
 int stub2 (int,int *) ;
 int stub3 (int *) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;
 int udelay (int) ;

__attribute__((used)) static int omap2_apll_enable(struct clk_hw *hw)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);
 struct dpll_data *ad = clk->dpll_data;
 u32 v;
 int i = 0;

 v = ti_clk_ll_ops->clk_readl(&ad->control_reg);
 v &= ~ad->enable_mask;
 v |= OMAP2_EN_APLL_LOCKED << __ffs(ad->enable_mask);
 ti_clk_ll_ops->clk_writel(v, &ad->control_reg);

 while (1) {
  v = ti_clk_ll_ops->clk_readl(&ad->idlest_reg);
  if (v & ad->idlest_mask)
   break;
  if (i > MAX_APLL_WAIT_TRIES)
   break;
  i++;
  udelay(1);
 }

 if (i == MAX_APLL_WAIT_TRIES) {
  pr_warn("%s failed to transition to locked\n",
   clk_hw_get_name(&clk->hw));
  return -EBUSY;
 }

 return 0;
}
