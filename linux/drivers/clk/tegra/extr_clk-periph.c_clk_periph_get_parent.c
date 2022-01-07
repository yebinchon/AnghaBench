
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct clk_hw hw; } ;
struct tegra_clk_periph {TYPE_1__ mux; struct clk_ops* mux_ops; } ;
struct clk_ops {int (* get_parent ) (struct clk_hw*) ;} ;


 int __clk_hw_set_clk (struct clk_hw*,struct clk_hw*) ;
 int stub1 (struct clk_hw*) ;
 struct tegra_clk_periph* to_clk_periph (struct clk_hw*) ;

__attribute__((used)) static u8 clk_periph_get_parent(struct clk_hw *hw)
{
 struct tegra_clk_periph *periph = to_clk_periph(hw);
 const struct clk_ops *mux_ops = periph->mux_ops;
 struct clk_hw *mux_hw = &periph->mux.hw;

 __clk_hw_set_clk(mux_hw, hw);

 return mux_ops->get_parent(mux_hw);
}
