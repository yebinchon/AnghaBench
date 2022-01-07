
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_clk_div {int flags; unsigned int shift; int width; int table; int reg; } ;
struct clk_hw {int dummy; } ;


 int CLK_DIVIDER_READ_ONLY ;
 long DIV_ROUND_UP (unsigned long,unsigned int) ;
 unsigned int _get_div (int ,unsigned int,int,int ) ;
 int clk_regmap ;
 unsigned int div_mask (int ) ;
 long divider_round_rate (struct clk_hw*,unsigned long,unsigned long*,int ,int ,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct lpc32xx_clk_div* to_lpc32xx_div (struct clk_hw*) ;

__attribute__((used)) static long clk_divider_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *prate)
{
 struct lpc32xx_clk_div *divider = to_lpc32xx_div(hw);
 unsigned int bestdiv;


 if (divider->flags & CLK_DIVIDER_READ_ONLY) {
  regmap_read(clk_regmap, divider->reg, &bestdiv);
  bestdiv >>= divider->shift;
  bestdiv &= div_mask(divider->width);
  bestdiv = _get_div(divider->table, bestdiv, divider->flags,
   divider->width);
  return DIV_ROUND_UP(*prate, bestdiv);
 }

 return divider_round_rate(hw, rate, prate, divider->table,
      divider->width, divider->flags);
}
