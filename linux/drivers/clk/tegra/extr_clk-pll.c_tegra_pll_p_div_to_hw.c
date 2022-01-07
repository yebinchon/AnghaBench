
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tegra_clk_pll {int hw; } ;


 int _p_div_to_hw (int *,int ) ;

int tegra_pll_p_div_to_hw(struct tegra_clk_pll *pll, u8 p_div)
{
 return _p_div_to_hw(&pll->hw, p_div);
}
