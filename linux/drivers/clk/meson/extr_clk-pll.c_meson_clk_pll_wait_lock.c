
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_clk_pll_data {int l; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 int ETIMEDOUT ;
 struct meson_clk_pll_data* meson_clk_pll_data (struct clk_regmap*) ;
 scalar_t__ meson_parm_read (int ,int *) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static int meson_clk_pll_wait_lock(struct clk_hw *hw)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);
 int delay = 24000000;

 do {

  if (meson_parm_read(clk->map, &pll->l))
   return 0;

  delay--;
 } while (delay > 0);

 return -ETIMEDOUT;
}
