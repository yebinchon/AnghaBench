
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_clk {int enable_mask; int reg; } ;
struct clk_hw {int dummy; } ;


 int clk_ddram_is_enabled (struct clk_hw*) ;
 int clk_regmap ;
 int regmap_read (int ,int ,int*) ;
 struct lpc32xx_clk* to_lpc32xx_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_ddram_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct lpc32xx_clk *clk = to_lpc32xx_clk(hw);
 u32 val;

 if (!clk_ddram_is_enabled(hw))
  return 0;

 regmap_read(clk_regmap, clk->reg, &val);
 val &= clk->enable_mask;

 return parent_rate / (val >> 7);
}
