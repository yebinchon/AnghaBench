
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct clk_hw_omap {int flags; int enable_bit; scalar_t__ clkdm; int enable_reg; } ;
struct clk_hw {int clk; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int (* clk_readl ) (int *) ;int (* clkdm_clk_disable ) (scalar_t__,int ) ;int (* clk_writel ) (int,int *) ;} ;


 int INVERT_ENABLE ;
 int TI_CLK_DISABLE_CLKDM_CONTROL ;
 int stub1 (int *) ;
 int stub2 (int,int *) ;
 int stub3 (scalar_t__,int ) ;
 TYPE_2__* ti_clk_get_features () ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

void omap2_dflt_clk_disable(struct clk_hw *hw)
{
 struct clk_hw_omap *clk;
 u32 v;

 clk = to_clk_hw_omap(hw);

 v = ti_clk_ll_ops->clk_readl(&clk->enable_reg);
 if (clk->flags & INVERT_ENABLE)
  v |= (1 << clk->enable_bit);
 else
  v &= ~(1 << clk->enable_bit);
 ti_clk_ll_ops->clk_writel(v, &clk->enable_reg);


 if (!(ti_clk_get_features()->flags & TI_CLK_DISABLE_CLKDM_CONTROL) &&
     clk->clkdm)
  ti_clk_ll_ops->clkdm_clk_disable(clk->clkdm, hw->clk);
}
