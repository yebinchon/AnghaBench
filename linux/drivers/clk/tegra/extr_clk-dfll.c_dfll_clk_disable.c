
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dfll {int dummy; } ;
struct clk_hw {int dummy; } ;


 struct tegra_dfll* clk_hw_to_dfll (struct clk_hw*) ;
 int dfll_disable (struct tegra_dfll*) ;
 int dfll_unlock (struct tegra_dfll*) ;

__attribute__((used)) static void dfll_clk_disable(struct clk_hw *hw)
{
 struct tegra_dfll *td = clk_hw_to_dfll(hw);
 int ret;

 ret = dfll_unlock(td);
 if (!ret)
  dfll_disable(td);
}
