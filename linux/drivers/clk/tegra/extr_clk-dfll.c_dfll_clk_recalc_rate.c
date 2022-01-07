
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dfll {unsigned long last_unrounded_rate; } ;
struct clk_hw {int dummy; } ;


 struct tegra_dfll* clk_hw_to_dfll (struct clk_hw*) ;

__attribute__((used)) static unsigned long dfll_clk_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct tegra_dfll *td = clk_hw_to_dfll(hw);

 return td->last_unrounded_rate;
}
