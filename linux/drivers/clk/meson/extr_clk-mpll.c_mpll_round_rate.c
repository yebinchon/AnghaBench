
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_clk_mpll_data {int flags; } ;
struct clk_regmap {int dummy; } ;
struct clk_hw {int dummy; } ;


 struct meson_clk_mpll_data* meson_clk_mpll_data (struct clk_regmap*) ;
 int params_from_rate (unsigned long,unsigned long,unsigned int*,unsigned int*,int ) ;
 long rate_from_params (unsigned long,unsigned int,unsigned int) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static long mpll_round_rate(struct clk_hw *hw,
       unsigned long rate,
       unsigned long *parent_rate)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_clk_mpll_data *mpll = meson_clk_mpll_data(clk);
 unsigned int sdm, n2;

 params_from_rate(rate, *parent_rate, &sdm, &n2, mpll->flags);
 return rate_from_params(*parent_rate, sdm, n2);
}
