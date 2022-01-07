
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct aspeed_clk_gate {int flags; int lock; int map; int clock_idx; } ;


 int CLK_GATE_SET_TO_DISABLE ;
 int get_bit (int ) ;
 scalar_t__ get_clock_reg (struct aspeed_clk_gate*) ;
 int regmap_write (int ,scalar_t__,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct aspeed_clk_gate* to_aspeed_clk_gate (struct clk_hw*) ;

__attribute__((used)) static void aspeed_g6_clk_disable(struct clk_hw *hw)
{
 struct aspeed_clk_gate *gate = to_aspeed_clk_gate(hw);
 unsigned long flags;
 u32 clk = get_bit(gate->clock_idx);

 spin_lock_irqsave(gate->lock, flags);

 if (gate->flags & CLK_GATE_SET_TO_DISABLE) {
  regmap_write(gate->map, get_clock_reg(gate), clk);
 } else {

  regmap_write(gate->map, get_clock_reg(gate) + 0x4, clk);
 }

 spin_unlock_irqrestore(gate->lock, flags);
}
