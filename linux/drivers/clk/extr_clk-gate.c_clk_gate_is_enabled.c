
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_gate {int flags; int bit_idx; } ;


 int BIT (int ) ;
 int CLK_GATE_SET_TO_DISABLE ;
 int clk_gate_readl (struct clk_gate*) ;
 struct clk_gate* to_clk_gate (struct clk_hw*) ;

int clk_gate_is_enabled(struct clk_hw *hw)
{
 u32 reg;
 struct clk_gate *gate = to_clk_gate(hw);

 reg = clk_gate_readl(gate);


 if (gate->flags & CLK_GATE_SET_TO_DISABLE)
  reg ^= BIT(gate->bit_idx);

 reg &= BIT(gate->bit_idx);

 return reg ? 1 : 0;
}
