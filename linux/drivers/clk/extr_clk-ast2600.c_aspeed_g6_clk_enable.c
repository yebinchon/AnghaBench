
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct aspeed_clk_gate {scalar_t__ clock_idx; scalar_t__ reset_idx; int flags; int lock; int map; } ;


 int CLK_GATE_SET_TO_DISABLE ;
 scalar_t__ aspeed_g6_clk_is_enabled (struct clk_hw*) ;
 int get_bit (scalar_t__) ;
 scalar_t__ get_clock_reg (struct aspeed_clk_gate*) ;
 scalar_t__ get_reset_reg (struct aspeed_clk_gate*) ;
 int mdelay (int) ;
 int regmap_write (int ,scalar_t__,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct aspeed_clk_gate* to_aspeed_clk_gate (struct clk_hw*) ;
 int udelay (int) ;

__attribute__((used)) static int aspeed_g6_clk_enable(struct clk_hw *hw)
{
 struct aspeed_clk_gate *gate = to_aspeed_clk_gate(hw);
 unsigned long flags;
 u32 clk = get_bit(gate->clock_idx);
 u32 rst = get_bit(gate->reset_idx);

 spin_lock_irqsave(gate->lock, flags);

 if (aspeed_g6_clk_is_enabled(hw)) {
  spin_unlock_irqrestore(gate->lock, flags);
  return 0;
 }

 if (gate->reset_idx >= 0) {

  regmap_write(gate->map, get_reset_reg(gate), rst);

  udelay(100);
 }


 if (gate->flags & CLK_GATE_SET_TO_DISABLE) {

  regmap_write(gate->map, get_clock_reg(gate) + 0x04, clk);
 } else {

  regmap_write(gate->map, get_clock_reg(gate), clk);
 }

 if (gate->reset_idx >= 0) {

  mdelay(10);

  regmap_write(gate->map, get_reset_reg(gate) + 0x4, rst);
 }

 spin_unlock_irqrestore(gate->lock, flags);

 return 0;
}
