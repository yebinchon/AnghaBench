
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_clk_pll_data {int en; int rst; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 struct meson_clk_pll_data* meson_clk_pll_data (struct clk_regmap*) ;
 int meson_parm_write (int ,int *,int) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static void meson_clk_pll_disable(struct clk_hw *hw)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);


 meson_parm_write(clk->map, &pll->rst, 1);


 meson_parm_write(clk->map, &pll->en, 0);
}
