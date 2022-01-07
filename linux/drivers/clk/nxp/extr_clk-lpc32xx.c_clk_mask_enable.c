
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_clk {int busy_mask; int busy; int enable; int enable_mask; int reg; } ;
struct clk_hw {int dummy; } ;


 int EBUSY ;
 int clk_regmap ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct lpc32xx_clk* to_lpc32xx_clk (struct clk_hw*) ;

__attribute__((used)) static int clk_mask_enable(struct clk_hw *hw)
{
 struct lpc32xx_clk *clk = to_lpc32xx_clk(hw);
 u32 val;

 regmap_read(clk_regmap, clk->reg, &val);

 if (clk->busy_mask && (val & clk->busy_mask) == clk->busy)
  return -EBUSY;

 return regmap_update_bits(clk_regmap, clk->reg,
      clk->enable_mask, clk->enable);
}
