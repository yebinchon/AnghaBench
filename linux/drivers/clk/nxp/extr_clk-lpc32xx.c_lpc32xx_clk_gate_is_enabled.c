
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_clk_gate {int flags; int bit_idx; int reg; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int CLK_GATE_SET_TO_DISABLE ;
 int clk_regmap ;
 int regmap_read (int ,int ,int*) ;
 struct lpc32xx_clk_gate* to_lpc32xx_gate (struct clk_hw*) ;

__attribute__((used)) static int lpc32xx_clk_gate_is_enabled(struct clk_hw *hw)
{
 struct lpc32xx_clk_gate *clk = to_lpc32xx_gate(hw);
 u32 val;
 bool is_set;

 regmap_read(clk_regmap, clk->reg, &val);
 is_set = val & BIT(clk->bit_idx);

 return (clk->flags & CLK_GATE_SET_TO_DISABLE ? !is_set : is_set);
}
