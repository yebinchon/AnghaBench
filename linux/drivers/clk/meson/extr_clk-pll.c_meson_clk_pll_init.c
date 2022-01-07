
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_clk_pll_data {int rst; scalar_t__ init_count; int init_regs; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 struct meson_clk_pll_data* meson_clk_pll_data (struct clk_regmap*) ;
 int meson_parm_write (int ,int *,int) ;
 int regmap_multi_reg_write (int ,int ,scalar_t__) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static void meson_clk_pll_init(struct clk_hw *hw)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);

 if (pll->init_count) {
  meson_parm_write(clk->map, &pll->rst, 1);
  regmap_multi_reg_write(clk->map, pll->init_regs,
           pll->init_count);
  meson_parm_write(clk->map, &pll->rst, 0);
 }
}
