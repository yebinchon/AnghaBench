
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_clk {int reg; } ;
struct clk_hw {int dummy; } ;


 int clk_regmap ;
 int regmap_read (int ,int ,int*) ;
 struct lpc32xx_clk* to_lpc32xx_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long lpc32xx_clk_uart_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct lpc32xx_clk *clk = to_lpc32xx_clk(hw);
 u32 val, x, y;

 regmap_read(clk_regmap, clk->reg, &val);
 x = (val & 0xFF00) >> 8;
 y = val & 0xFF;

 if (x && y)
  return (parent_rate * x) / y;
 else
  return 0;
}
