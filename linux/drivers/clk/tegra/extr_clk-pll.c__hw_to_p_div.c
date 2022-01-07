
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct tegra_clk_pll {TYPE_1__* params; } ;
struct pdiv_map {int pdiv; scalar_t__ hw_val; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct pdiv_map* pdiv_tohw; } ;


 int EINVAL ;
 struct tegra_clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static int _hw_to_p_div(struct clk_hw *hw, u8 p_div_hw)
{
 struct tegra_clk_pll *pll = to_clk_pll(hw);
 const struct pdiv_map *p_tohw = pll->params->pdiv_tohw;

 if (p_tohw) {
  while (p_tohw->pdiv) {
   if (p_div_hw == p_tohw->hw_val)
    return p_tohw->pdiv;
   p_tohw++;
  }
  return -EINVAL;
 }

 return 1 << p_div_hw;
}
