
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_clk_div {int shift; int width; int reg; int flags; int table; } ;
struct clk_hw {int dummy; } ;


 int clk_regmap ;
 int div_mask (int ) ;
 unsigned int divider_get_val (unsigned long,unsigned long,int ,int ,int ) ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;
 struct lpc32xx_clk_div* to_lpc32xx_div (struct clk_hw*) ;

__attribute__((used)) static int clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 struct lpc32xx_clk_div *divider = to_lpc32xx_div(hw);
 unsigned int value;

 value = divider_get_val(rate, parent_rate, divider->table,
    divider->width, divider->flags);

 return regmap_update_bits(clk_regmap, divider->reg,
      div_mask(divider->width) << divider->shift,
      value << divider->shift);
}
