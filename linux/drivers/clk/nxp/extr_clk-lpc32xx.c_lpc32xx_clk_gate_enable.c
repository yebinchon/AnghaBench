
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_clk_gate {int flags; int reg; int bit_idx; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int CLK_GATE_SET_TO_DISABLE ;
 int clk_regmap ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct lpc32xx_clk_gate* to_lpc32xx_gate (struct clk_hw*) ;

__attribute__((used)) static int lpc32xx_clk_gate_enable(struct clk_hw *hw)
{
 struct lpc32xx_clk_gate *clk = to_lpc32xx_gate(hw);
 u32 mask = BIT(clk->bit_idx);
 u32 val = (clk->flags & CLK_GATE_SET_TO_DISABLE ? 0x0 : mask);

 return regmap_update_bits(clk_regmap, clk->reg, mask, val);
}
