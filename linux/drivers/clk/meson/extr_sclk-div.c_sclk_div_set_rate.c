
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_sclk_div_data {int cached_div; } ;
struct clk_regmap {int dummy; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ clk_hw_is_enabled (struct clk_hw*) ;
 struct meson_sclk_div_data* meson_sclk_div_data (struct clk_regmap*) ;
 int sclk_apply_divider (struct clk_regmap*,struct meson_sclk_div_data*) ;
 int sclk_div_getdiv (struct clk_hw*,unsigned long,unsigned long,unsigned long) ;
 unsigned long sclk_div_maxdiv (struct meson_sclk_div_data*) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static int sclk_div_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long prate)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_sclk_div_data *sclk = meson_sclk_div_data(clk);
 unsigned long maxdiv = sclk_div_maxdiv(sclk);

 sclk->cached_div = sclk_div_getdiv(hw, rate, prate, maxdiv);

 if (clk_hw_is_enabled(hw))
  sclk_apply_divider(clk, sclk);

 return 0;
}
