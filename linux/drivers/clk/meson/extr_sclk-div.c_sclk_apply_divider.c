
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_sclk_div_data {scalar_t__ cached_div; int div; int hi; } ;
struct clk_regmap {int map; } ;


 scalar_t__ MESON_PARM_APPLICABLE (int *) ;
 int meson_parm_write (int ,int *,scalar_t__) ;
 int sclk_apply_ratio (struct clk_regmap*,struct meson_sclk_div_data*) ;

__attribute__((used)) static void sclk_apply_divider(struct clk_regmap *clk,
          struct meson_sclk_div_data *sclk)
{
 if (MESON_PARM_APPLICABLE(&sclk->hi))
  sclk_apply_ratio(clk, sclk);

 meson_parm_write(clk->map, &sclk->div, sclk->cached_div - 1);
}
