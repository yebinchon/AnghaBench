
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_clk {int disable; int disable_mask; int reg; } ;
struct clk_hw {int dummy; } ;


 int clk_regmap ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct lpc32xx_clk* to_lpc32xx_clk (struct clk_hw*) ;

__attribute__((used)) static void clk_mask_disable(struct clk_hw *hw)
{
 struct lpc32xx_clk *clk = to_lpc32xx_clk(hw);

 regmap_update_bits(clk_regmap, clk->reg,
      clk->disable_mask, clk->disable);
}
