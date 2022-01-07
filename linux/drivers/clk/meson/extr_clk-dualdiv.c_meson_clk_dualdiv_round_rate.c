
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_clk_dualdiv_param {int dummy; } ;
struct meson_clk_dualdiv_data {int dummy; } ;
struct clk_regmap {int dummy; } ;
struct clk_hw {int dummy; } ;


 struct meson_clk_dualdiv_param* __dualdiv_get_setting (unsigned long,unsigned long,struct meson_clk_dualdiv_data*) ;
 long __dualdiv_param_to_rate (unsigned long,struct meson_clk_dualdiv_param const*) ;
 struct meson_clk_dualdiv_data* meson_clk_dualdiv_data (struct clk_regmap*) ;
 long meson_clk_dualdiv_recalc_rate (struct clk_hw*,unsigned long) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static long meson_clk_dualdiv_round_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long *parent_rate)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_clk_dualdiv_data *dualdiv = meson_clk_dualdiv_data(clk);
 const struct meson_clk_dualdiv_param *setting =
  __dualdiv_get_setting(rate, *parent_rate, dualdiv);

 if (!setting)
  return meson_clk_dualdiv_recalc_rate(hw, *parent_rate);

 return __dualdiv_param_to_rate(*parent_rate, setting);
}
