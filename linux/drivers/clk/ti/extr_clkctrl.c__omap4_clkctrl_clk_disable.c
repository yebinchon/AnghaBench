
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union omap4_timeout {int member_0; } ;
typedef int u32 ;
struct clk_hw_omap {int flags; scalar_t__ clkdm; int enable_reg; int enable_bit; } ;
struct clk_hw {int clk; } ;
struct TYPE_2__ {int (* clkdm_clk_disable ) (scalar_t__,int ) ;int (* clk_readl ) (int *) ;int (* clk_writel ) (int ,int *) ;} ;


 int NO_IDLEST ;
 int OMAP4_MAX_MODULE_DISABLE_TIME ;
 int OMAP4_MODULEMODE_MASK ;
 int _omap4_is_idle (int ) ;
 scalar_t__ _omap4_is_timeout (union omap4_timeout*,int ) ;
 int clk_hw_get_name (struct clk_hw*) ;
 int pr_err (char*,int ) ;
 int stub1 (int *) ;
 int stub2 (int ,int *) ;
 int stub3 (int *) ;
 int stub4 (scalar_t__,int ) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

__attribute__((used)) static void _omap4_clkctrl_clk_disable(struct clk_hw *hw)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);
 u32 val;
 union omap4_timeout timeout = { 0 };

 if (!clk->enable_bit)
  goto exit;

 val = ti_clk_ll_ops->clk_readl(&clk->enable_reg);

 val &= ~OMAP4_MODULEMODE_MASK;

 ti_clk_ll_ops->clk_writel(val, &clk->enable_reg);

 if (clk->flags & NO_IDLEST)
  goto exit;


 while (!_omap4_is_idle(ti_clk_ll_ops->clk_readl(&clk->enable_reg))) {
  if (_omap4_is_timeout(&timeout,
          OMAP4_MAX_MODULE_DISABLE_TIME)) {
   pr_err("%s: failed to disable\n", clk_hw_get_name(hw));
   break;
  }
 }

exit:
 if (clk->clkdm)
  ti_clk_ll_ops->clkdm_clk_disable(clk->clkdm, hw->clk);
}
