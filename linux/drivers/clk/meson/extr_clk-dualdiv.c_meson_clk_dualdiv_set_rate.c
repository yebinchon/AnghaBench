
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_clk_dualdiv_param {scalar_t__ m2; scalar_t__ n2; scalar_t__ m1; scalar_t__ n1; scalar_t__ dual; } ;
struct meson_clk_dualdiv_data {int m2; int n2; int m1; int n1; int dual; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 struct meson_clk_dualdiv_param* __dualdiv_get_setting (unsigned long,unsigned long,struct meson_clk_dualdiv_data*) ;
 struct meson_clk_dualdiv_data* meson_clk_dualdiv_data (struct clk_regmap*) ;
 int meson_parm_write (int ,int *,scalar_t__) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static int meson_clk_dualdiv_set_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long parent_rate)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_clk_dualdiv_data *dualdiv = meson_clk_dualdiv_data(clk);
 const struct meson_clk_dualdiv_param *setting =
  __dualdiv_get_setting(rate, parent_rate, dualdiv);

 if (!setting)
  return -EINVAL;

 meson_parm_write(clk->map, &dualdiv->dual, setting->dual);
 meson_parm_write(clk->map, &dualdiv->n1, setting->n1 - 1);
 meson_parm_write(clk->map, &dualdiv->m1, setting->m1 - 1);
 meson_parm_write(clk->map, &dualdiv->n2, setting->n2 - 1);
 meson_parm_write(clk->map, &dualdiv->m2, setting->m2 - 1);

 return 0;
}
