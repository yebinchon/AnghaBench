
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct aspeed_clk_gate {scalar_t__ clock_idx; scalar_t__ reset_idx; int flags; int map; } ;


 int CLK_GATE_SET_TO_DISABLE ;
 int get_bit (scalar_t__) ;
 int get_clock_reg (struct aspeed_clk_gate*) ;
 int get_reset_reg (struct aspeed_clk_gate*) ;
 int regmap_read (int ,int ,int*) ;
 struct aspeed_clk_gate* to_aspeed_clk_gate (struct clk_hw*) ;

__attribute__((used)) static int aspeed_g6_clk_is_enabled(struct clk_hw *hw)
{
 struct aspeed_clk_gate *gate = to_aspeed_clk_gate(hw);
 u32 clk = get_bit(gate->clock_idx);
 u32 rst = get_bit(gate->reset_idx);
 u32 reg;
 u32 enval;







 if (gate->reset_idx >= 0) {
  regmap_read(gate->map, get_reset_reg(gate), &reg);

  if (reg & rst)
   return 0;
 }

 regmap_read(gate->map, get_clock_reg(gate), &reg);

 enval = (gate->flags & CLK_GATE_SET_TO_DISABLE) ? 0 : clk;

 return ((reg & clk) == enval) ? 1 : 0;
}
