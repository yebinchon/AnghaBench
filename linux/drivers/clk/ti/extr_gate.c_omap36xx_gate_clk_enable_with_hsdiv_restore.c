
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_omap_divider {int shift; int reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;int (* clk_writel ) (int,int *) ;} ;


 struct clk_hw* clk_hw_get_parent (struct clk_hw*) ;
 int omap2_dflt_clk_enable (struct clk_hw*) ;
 int stub1 (int *) ;
 int stub2 (int,int *) ;
 int stub3 (int,int *) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_omap_divider* to_clk_omap_divider (struct clk_hw*) ;

__attribute__((used)) static int omap36xx_gate_clk_enable_with_hsdiv_restore(struct clk_hw *hw)
{
 struct clk_omap_divider *parent;
 struct clk_hw *parent_hw;
 u32 dummy_v, orig_v;
 int ret;


 ret = omap2_dflt_clk_enable(hw);


 parent_hw = clk_hw_get_parent(clk_hw_get_parent(hw));
 parent = to_clk_omap_divider(parent_hw);


 if (!ret) {
  orig_v = ti_clk_ll_ops->clk_readl(&parent->reg);
  dummy_v = orig_v;


  dummy_v ^= (1 << parent->shift);
  ti_clk_ll_ops->clk_writel(dummy_v, &parent->reg);


  ti_clk_ll_ops->clk_writel(orig_v, &parent->reg);
 }

 return ret;
}
