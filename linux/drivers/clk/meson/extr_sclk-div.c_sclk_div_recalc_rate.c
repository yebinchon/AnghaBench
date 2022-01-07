
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct meson_sclk_div_data {int cached_div; } ;
struct clk_regmap {int dummy; } ;
struct clk_hw {int dummy; } ;


 unsigned long DIV_ROUND_UP_ULL (int ,int ) ;
 struct meson_sclk_div_data* meson_sclk_div_data (struct clk_regmap*) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static unsigned long sclk_div_recalc_rate(struct clk_hw *hw,
       unsigned long prate)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_sclk_div_data *sclk = meson_sclk_div_data(clk);

 return DIV_ROUND_UP_ULL((u64)prate, sclk->cached_div);
}
