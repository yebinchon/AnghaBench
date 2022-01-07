
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dfll {int dummy; } ;
struct clk_hw {int dummy; } ;


 struct tegra_dfll* clk_hw_to_dfll (struct clk_hw*) ;
 int dfll_request_rate (struct tegra_dfll*,unsigned long) ;

__attribute__((used)) static int dfll_clk_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 struct tegra_dfll *td = clk_hw_to_dfll(hw);

 return dfll_request_rate(td, rate);
}
