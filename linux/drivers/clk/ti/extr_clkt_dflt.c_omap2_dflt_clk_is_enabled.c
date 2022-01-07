
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_hw_omap {int flags; int enable_bit; int enable_reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;} ;


 int BIT (int ) ;
 int INVERT_ENABLE ;
 int stub1 (int *) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

int omap2_dflt_clk_is_enabled(struct clk_hw *hw)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);
 u32 v;

 v = ti_clk_ll_ops->clk_readl(&clk->enable_reg);

 if (clk->flags & INVERT_ENABLE)
  v ^= BIT(clk->enable_bit);

 v &= BIT(clk->enable_bit);

 return v ? 1 : 0;
}
