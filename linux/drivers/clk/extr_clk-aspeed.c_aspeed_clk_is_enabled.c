
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct aspeed_clk_gate {scalar_t__ clock_idx; scalar_t__ reset_idx; int flags; int map; } ;


 int ASPEED_CLK_STOP_CTRL ;
 int ASPEED_RESET_CTRL ;
 int BIT (scalar_t__) ;
 int CLK_GATE_SET_TO_DISABLE ;
 int regmap_read (int ,int ,int*) ;
 struct aspeed_clk_gate* to_aspeed_clk_gate (struct clk_hw*) ;

__attribute__((used)) static int aspeed_clk_is_enabled(struct clk_hw *hw)
{
 struct aspeed_clk_gate *gate = to_aspeed_clk_gate(hw);
 u32 clk = BIT(gate->clock_idx);
 u32 rst = BIT(gate->reset_idx);
 u32 enval = (gate->flags & CLK_GATE_SET_TO_DISABLE) ? 0 : clk;
 u32 reg;







 if (gate->reset_idx >= 0) {
  regmap_read(gate->map, ASPEED_RESET_CTRL, &reg);
  if (reg & rst)
   return 0;
 }

 regmap_read(gate->map, ASPEED_CLK_STOP_CTRL, &reg);

 return ((reg & clk) == enval) ? 1 : 0;
}
