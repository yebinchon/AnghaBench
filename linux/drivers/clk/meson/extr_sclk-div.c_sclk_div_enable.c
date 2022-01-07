
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_sclk_div_data {int dummy; } ;
struct clk_regmap {int dummy; } ;
struct clk_hw {int dummy; } ;


 struct meson_sclk_div_data* meson_sclk_div_data (struct clk_regmap*) ;
 int sclk_apply_divider (struct clk_regmap*,struct meson_sclk_div_data*) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static int sclk_div_enable(struct clk_hw *hw)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_sclk_div_data *sclk = meson_sclk_div_data(clk);

 sclk_apply_divider(clk, sclk);

 return 0;
}
