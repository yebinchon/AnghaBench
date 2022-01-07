
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_clk_pll_data {int rst; int en; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 int EIO ;
 scalar_t__ clk_hw_is_enabled (struct clk_hw*) ;
 struct meson_clk_pll_data* meson_clk_pll_data (struct clk_regmap*) ;
 scalar_t__ meson_clk_pll_wait_lock (struct clk_hw*) ;
 int meson_parm_write (int ,int *,int) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static int meson_clk_pll_enable(struct clk_hw *hw)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);


 if (clk_hw_is_enabled(hw))
  return 0;


 meson_parm_write(clk->map, &pll->rst, 1);


 meson_parm_write(clk->map, &pll->en, 1);


 meson_parm_write(clk->map, &pll->rst, 0);

 if (meson_clk_pll_wait_lock(hw))
  return -EIO;

 return 0;
}
