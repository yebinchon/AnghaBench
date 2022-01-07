
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_regmap {int regmap; } ;
struct clk_regmap_div {int shift; int width; int reg; struct clk_regmap clkr; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int CLK_DIVIDER_ROUND_CLOSEST ;
 int divider_get_val (unsigned long,unsigned long,int *,int ,int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct clk_regmap_div* to_clk_regmap_div (struct clk_hw*) ;

__attribute__((used)) static int div_set_rate(struct clk_hw *hw, unsigned long rate,
   unsigned long parent_rate)
{
 struct clk_regmap_div *divider = to_clk_regmap_div(hw);
 struct clk_regmap *clkr = &divider->clkr;
 u32 div;

 div = divider_get_val(rate, parent_rate, ((void*)0), divider->width,
         CLK_DIVIDER_ROUND_CLOSEST);

 return regmap_update_bits(clkr->regmap, divider->reg,
      (BIT(divider->width) - 1) << divider->shift,
      div << divider->shift);
}
