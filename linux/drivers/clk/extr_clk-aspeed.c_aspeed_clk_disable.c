
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct aspeed_clk_gate {long flags; int lock; int map; int clock_idx; } ;


 int ASPEED_CLK_STOP_CTRL ;
 int BIT (int ) ;
 long CLK_GATE_SET_TO_DISABLE ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct aspeed_clk_gate* to_aspeed_clk_gate (struct clk_hw*) ;

__attribute__((used)) static void aspeed_clk_disable(struct clk_hw *hw)
{
 struct aspeed_clk_gate *gate = to_aspeed_clk_gate(hw);
 unsigned long flags;
 u32 clk = BIT(gate->clock_idx);
 u32 enval;

 spin_lock_irqsave(gate->lock, flags);

 enval = (gate->flags & CLK_GATE_SET_TO_DISABLE) ? clk : 0;
 regmap_update_bits(gate->map, ASPEED_CLK_STOP_CTRL, clk, enval);

 spin_unlock_irqrestore(gate->lock, flags);
}
