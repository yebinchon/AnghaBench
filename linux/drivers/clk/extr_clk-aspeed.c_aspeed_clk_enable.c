
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct aspeed_clk_gate {scalar_t__ clock_idx; scalar_t__ reset_idx; long flags; int lock; int map; } ;


 int ASPEED_CLK_STOP_CTRL ;
 int ASPEED_RESET_CTRL ;
 int BIT (scalar_t__) ;
 long CLK_GATE_SET_TO_DISABLE ;
 scalar_t__ aspeed_clk_is_enabled (struct clk_hw*) ;
 int mdelay (int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct aspeed_clk_gate* to_aspeed_clk_gate (struct clk_hw*) ;
 int udelay (int) ;

__attribute__((used)) static int aspeed_clk_enable(struct clk_hw *hw)
{
 struct aspeed_clk_gate *gate = to_aspeed_clk_gate(hw);
 unsigned long flags;
 u32 clk = BIT(gate->clock_idx);
 u32 rst = BIT(gate->reset_idx);
 u32 enval;

 spin_lock_irqsave(gate->lock, flags);

 if (aspeed_clk_is_enabled(hw)) {
  spin_unlock_irqrestore(gate->lock, flags);
  return 0;
 }

 if (gate->reset_idx >= 0) {

  regmap_update_bits(gate->map, ASPEED_RESET_CTRL, rst, rst);


  udelay(100);
 }


 enval = (gate->flags & CLK_GATE_SET_TO_DISABLE) ? 0 : clk;
 regmap_update_bits(gate->map, ASPEED_CLK_STOP_CTRL, clk, enval);

 if (gate->reset_idx >= 0) {

  mdelay(10);


  regmap_update_bits(gate->map, ASPEED_RESET_CTRL, rst, 0);
 }

 spin_unlock_irqrestore(gate->lock, flags);

 return 0;
}
