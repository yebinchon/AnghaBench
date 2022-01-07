
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct clk_hw hw; } ;
struct tegra_clk_periph {TYPE_1__ divider; struct clk_ops* div_ops; } ;
struct clk_ops {unsigned long (* recalc_rate ) (struct clk_hw*,unsigned long) ;} ;


 int __clk_hw_set_clk (struct clk_hw*,struct clk_hw*) ;
 unsigned long stub1 (struct clk_hw*,unsigned long) ;
 struct tegra_clk_periph* to_clk_periph (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_periph_recalc_rate(struct clk_hw *hw,
         unsigned long parent_rate)
{
 struct tegra_clk_periph *periph = to_clk_periph(hw);
 const struct clk_ops *div_ops = periph->div_ops;
 struct clk_hw *div_hw = &periph->divider.hw;

 __clk_hw_set_clk(div_hw, hw);

 return div_ops->recalc_rate(div_hw, parent_rate);
}
