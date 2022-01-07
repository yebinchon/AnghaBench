
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_sclk_div_data {unsigned int cached_div; int cached_duty; int div; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 unsigned int meson_parm_read (int ,int *) ;
 struct meson_sclk_div_data* meson_sclk_div_data (struct clk_regmap*) ;
 int sclk_div_get_duty_cycle (struct clk_hw*,int *) ;
 unsigned int sclk_div_maxdiv (struct meson_sclk_div_data*) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static void sclk_div_init(struct clk_hw *hw)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_sclk_div_data *sclk = meson_sclk_div_data(clk);
 unsigned int val;

 val = meson_parm_read(clk->map, &sclk->div);


 if (!val)
  sclk->cached_div = sclk_div_maxdiv(sclk);
 else
  sclk->cached_div = val + 1;

 sclk_div_get_duty_cycle(hw, &sclk->cached_duty);
}
