
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_clk_periph_fixed {unsigned long long mul; int div; } ;
struct clk_hw {int dummy; } ;


 int do_div (unsigned long long,int ) ;
 struct tegra_clk_periph_fixed* to_tegra_clk_periph_fixed (struct clk_hw*) ;

__attribute__((used)) static unsigned long
tegra_clk_periph_fixed_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct tegra_clk_periph_fixed *fixed = to_tegra_clk_periph_fixed(hw);
 unsigned long long rate;

 rate = (unsigned long long)parent_rate * fixed->mul;
 do_div(rate, fixed->div);

 return (unsigned long)rate;
}
