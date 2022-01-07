
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct clk_gate {int lock; scalar_t__ reg; int bit_idx; } ;
struct TYPE_2__ {scalar_t__ (* is_enabled ) (struct clk_hw*) ;} ;


 int BIT (int ) ;
 scalar_t__ RCC_CLR ;
 TYPE_1__ clk_gate_ops ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ stub1 (struct clk_hw*) ;
 struct clk_gate* to_clk_gate (struct clk_hw*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void mp1_gate_clk_disable(struct clk_hw *hw)
{
 struct clk_gate *gate = to_clk_gate(hw);
 unsigned long flags = 0;

 if (clk_gate_ops.is_enabled(hw)) {
  spin_lock_irqsave(gate->lock, flags);
  writel_relaxed(BIT(gate->bit_idx), gate->reg + RCC_CLR);
  spin_unlock_irqrestore(gate->lock, flags);
 }
}
