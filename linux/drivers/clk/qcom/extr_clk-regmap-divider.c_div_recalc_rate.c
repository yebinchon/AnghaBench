
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
 unsigned long divider_recalc_rate (struct clk_hw*,unsigned long,int,int *,int ,int ) ;
 int regmap_read (int ,int ,int*) ;
 struct clk_regmap_div* to_clk_regmap_div (struct clk_hw*) ;

__attribute__((used)) static unsigned long div_recalc_rate(struct clk_hw *hw,
         unsigned long parent_rate)
{
 struct clk_regmap_div *divider = to_clk_regmap_div(hw);
 struct clk_regmap *clkr = &divider->clkr;
 u32 div;

 regmap_read(clkr->regmap, divider->reg, &div);
 div >>= divider->shift;
 div &= BIT(divider->width) - 1;

 return divider_recalc_rate(hw, parent_rate, div, ((void*)0),
       CLK_DIVIDER_ROUND_CLOSEST, divider->width);
}
