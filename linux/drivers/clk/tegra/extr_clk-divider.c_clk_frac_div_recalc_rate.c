
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tegra_clk_frac_div {int shift; int reg; } ;
struct clk_hw {int dummy; } ;


 int div_mask (struct tegra_clk_frac_div*) ;
 int do_div (int,int) ;
 int get_mul (struct tegra_clk_frac_div*) ;
 int readl_relaxed (int ) ;
 struct tegra_clk_frac_div* to_clk_frac_div (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_frac_div_recalc_rate(struct clk_hw *hw,
          unsigned long parent_rate)
{
 struct tegra_clk_frac_div *divider = to_clk_frac_div(hw);
 u32 reg;
 int div, mul;
 u64 rate = parent_rate;

 reg = readl_relaxed(divider->reg) >> divider->shift;
 div = reg & div_mask(divider);

 mul = get_mul(divider);
 div += mul;

 rate *= mul;
 rate += div - 1;
 do_div(rate, div);

 return rate;
}
