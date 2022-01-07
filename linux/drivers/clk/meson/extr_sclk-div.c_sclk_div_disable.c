
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_sclk_div_data {int div; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 int meson_parm_write (int ,int *,int ) ;
 struct meson_sclk_div_data* meson_sclk_div_data (struct clk_regmap*) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static void sclk_div_disable(struct clk_hw *hw)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_sclk_div_data *sclk = meson_sclk_div_data(clk);

 meson_parm_write(clk->map, &sclk->div, 0);
}
