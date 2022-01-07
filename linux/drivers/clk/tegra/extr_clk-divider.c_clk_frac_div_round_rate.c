
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_clk_frac_div {int dummy; } ;
struct clk_hw {int dummy; } ;


 long DIV_ROUND_UP (unsigned long,int) ;
 int get_div (struct tegra_clk_frac_div*,unsigned long,unsigned long) ;
 int get_mul (struct tegra_clk_frac_div*) ;
 struct tegra_clk_frac_div* to_clk_frac_div (struct clk_hw*) ;

__attribute__((used)) static long clk_frac_div_round_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long *prate)
{
 struct tegra_clk_frac_div *divider = to_clk_frac_div(hw);
 int div, mul;
 unsigned long output_rate = *prate;

 if (!rate)
  return output_rate;

 div = get_div(divider, rate, output_rate);
 if (div < 0)
  return *prate;

 mul = get_mul(divider);

 return DIV_ROUND_UP(output_rate * mul, div + mul);
}
