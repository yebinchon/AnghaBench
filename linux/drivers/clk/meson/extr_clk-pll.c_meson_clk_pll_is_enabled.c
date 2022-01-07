
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_clk_pll_data {int l; int en; int rst; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 struct meson_clk_pll_data* meson_clk_pll_data (struct clk_regmap*) ;
 scalar_t__ meson_parm_read (int ,int *) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static int meson_clk_pll_is_enabled(struct clk_hw *hw)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);

 if (meson_parm_read(clk->map, &pll->rst) ||
     !meson_parm_read(clk->map, &pll->en) ||
     !meson_parm_read(clk->map, &pll->l))
  return 0;

 return 1;
}
