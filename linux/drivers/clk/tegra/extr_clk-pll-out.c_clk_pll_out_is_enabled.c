
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_clk_pll_out {int reg; } ;
struct clk_hw {int dummy; } ;


 int pll_out_enb (struct tegra_clk_pll_out*) ;
 int pll_out_rst (struct tegra_clk_pll_out*) ;
 int readl_relaxed (int ) ;
 struct tegra_clk_pll_out* to_clk_pll_out (struct clk_hw*) ;

__attribute__((used)) static int clk_pll_out_is_enabled(struct clk_hw *hw)
{
 struct tegra_clk_pll_out *pll_out = to_clk_pll_out(hw);
 u32 val = readl_relaxed(pll_out->reg);
 int state;

 state = (val & pll_out_enb(pll_out)) ? 1 : 0;
 if (!(val & (pll_out_rst(pll_out))))
  state = 0;
 return state;
}
