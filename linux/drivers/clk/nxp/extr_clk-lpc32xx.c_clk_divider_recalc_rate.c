
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_clk_div {unsigned int shift; int width; int flags; int table; int reg; } ;
struct clk_hw {int dummy; } ;


 int clk_regmap ;
 unsigned int div_mask (int ) ;
 unsigned long divider_recalc_rate (struct clk_hw*,unsigned long,unsigned int,int ,int ,int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct lpc32xx_clk_div* to_lpc32xx_div (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_divider_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct lpc32xx_clk_div *divider = to_lpc32xx_div(hw);
 unsigned int val;

 regmap_read(clk_regmap, divider->reg, &val);

 val >>= divider->shift;
 val &= div_mask(divider->width);

 return divider_recalc_rate(hw, parent_rate, val, divider->table,
       divider->flags, divider->width);
}
