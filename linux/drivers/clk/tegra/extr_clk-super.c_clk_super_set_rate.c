
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_3__ {struct clk_hw hw; } ;
struct tegra_clk_super_mux {TYPE_2__* div_ops; TYPE_1__ frac_div; } ;
struct TYPE_4__ {int (* set_rate ) (struct clk_hw*,unsigned long,unsigned long) ;} ;


 int __clk_hw_set_clk (struct clk_hw*,struct clk_hw*) ;
 int stub1 (struct clk_hw*,unsigned long,unsigned long) ;
 struct tegra_clk_super_mux* to_clk_super_mux (struct clk_hw*) ;

__attribute__((used)) static int clk_super_set_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long parent_rate)
{
 struct tegra_clk_super_mux *super = to_clk_super_mux(hw);
 struct clk_hw *div_hw = &super->frac_div.hw;

 __clk_hw_set_clk(div_hw, hw);

 return super->div_ops->set_rate(div_hw, rate, parent_rate);
}
