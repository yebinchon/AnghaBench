
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_clk {int enable_mask; int enable; int reg; } ;
struct clk_hw {int dummy; } ;


 int clk_regmap ;
 int regmap_read (int ,int ,int*) ;
 struct lpc32xx_clk* to_lpc32xx_clk (struct clk_hw*) ;

__attribute__((used)) static int clk_mask_is_enabled(struct clk_hw *hw)
{
 struct lpc32xx_clk *clk = to_lpc32xx_clk(hw);
 u32 val;

 regmap_read(clk_regmap, clk->reg, &val);

 return ((val & clk->enable_mask) == clk->enable);
}
