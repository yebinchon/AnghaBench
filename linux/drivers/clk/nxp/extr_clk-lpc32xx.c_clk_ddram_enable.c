
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_clk {int busy_mask; int enable_mask; int reg; } ;
struct clk_hw {int dummy; } ;


 int BIT (int) ;
 int EINVAL ;
 int clk_regmap ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct lpc32xx_clk* to_lpc32xx_clk (struct clk_hw*) ;

__attribute__((used)) static int clk_ddram_enable(struct clk_hw *hw)
{
 struct lpc32xx_clk *clk = to_lpc32xx_clk(hw);
 u32 val, hclk_div;

 regmap_read(clk_regmap, clk->reg, &val);
 hclk_div = val & clk->busy_mask;






 if (hclk_div == 0x0 || hclk_div == (BIT(1) | BIT(0)))
  return -EINVAL;

 return regmap_update_bits(clk_regmap, clk->reg,
      clk->enable_mask, hclk_div << 7);
}
