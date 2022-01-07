
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_pll_clk {int reg; int enable; } ;
struct clk_hw {int dummy; } ;


 int ETIMEDOUT ;
 int PLL_CTRL_LOCK ;
 int clk_regmap ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct lpc32xx_pll_clk* to_lpc32xx_pll_clk (struct clk_hw*) ;

__attribute__((used)) static int clk_pll_enable(struct clk_hw *hw)
{
 struct lpc32xx_pll_clk *clk = to_lpc32xx_pll_clk(hw);
 u32 val, count;

 regmap_update_bits(clk_regmap, clk->reg, clk->enable, clk->enable);

 for (count = 0; count < 1000; count++) {
  regmap_read(clk_regmap, clk->reg, &val);
  if (val & PLL_CTRL_LOCK)
   break;
 }

 if (val & PLL_CTRL_LOCK)
  return 0;

 return -ETIMEDOUT;
}
