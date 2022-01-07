
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_regmap_div {int width; } ;
struct clk_hw {int dummy; } ;


 int CLK_DIVIDER_ROUND_CLOSEST ;
 long divider_round_rate (struct clk_hw*,unsigned long,unsigned long*,int *,int ,int ) ;
 struct clk_regmap_div* to_clk_regmap_div (struct clk_hw*) ;

__attribute__((used)) static long div_round_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long *prate)
{
 struct clk_regmap_div *divider = to_clk_regmap_div(hw);

 return divider_round_rate(hw, rate, prate, ((void*)0), divider->width,
      CLK_DIVIDER_ROUND_CLOSEST);
}
