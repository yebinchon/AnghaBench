
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_sclk_div_data {int cached_duty; int hi; } ;
struct clk_regmap {int dummy; } ;
struct clk_hw {int dummy; } ;
struct clk_duty {int dummy; } ;


 scalar_t__ MESON_PARM_APPLICABLE (int *) ;
 int memcpy (int *,struct clk_duty*,int) ;
 struct meson_sclk_div_data* meson_sclk_div_data (struct clk_regmap*) ;
 int sclk_apply_ratio (struct clk_regmap*,struct meson_sclk_div_data*) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static int sclk_div_set_duty_cycle(struct clk_hw *hw,
       struct clk_duty *duty)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_sclk_div_data *sclk = meson_sclk_div_data(clk);

 if (MESON_PARM_APPLICABLE(&sclk->hi)) {
  memcpy(&sclk->cached_duty, duty, sizeof(*duty));
  sclk_apply_ratio(clk, sclk);
 }

 return 0;
}
