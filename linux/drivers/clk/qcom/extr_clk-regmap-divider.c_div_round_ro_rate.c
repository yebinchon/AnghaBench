
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
 long divider_ro_round_rate (struct clk_hw*,unsigned long,unsigned long*,int *,int ,int ,int) ;
 int regmap_read (int ,int ,int*) ;
 struct clk_regmap_div* to_clk_regmap_div (struct clk_hw*) ;

__attribute__((used)) static long div_round_ro_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long *prate)
{
 struct clk_regmap_div *divider = to_clk_regmap_div(hw);
 struct clk_regmap *clkr = &divider->clkr;
 u32 val;

 regmap_read(clkr->regmap, divider->reg, &val);
 val >>= divider->shift;
 val &= BIT(divider->width) - 1;

 return divider_ro_round_rate(hw, rate, prate, ((void*)0), divider->width,
         CLK_DIVIDER_ROUND_CLOSEST, val);
}
