
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_ready_gate {int bit_rdy; } ;
struct clk_hw {int dummy; } ;
struct clk_gate {int reg; } ;
struct TYPE_2__ {int (* enable ) (struct clk_hw*) ;scalar_t__ (* is_enabled ) (struct clk_hw*) ;} ;


 int BIT (int ) ;
 unsigned int RGATE_TIMEOUT ;
 TYPE_1__ clk_gate_ops ;
 int readl (int ) ;
 scalar_t__ stub1 (struct clk_hw*) ;
 int stub2 (struct clk_hw*) ;
 struct clk_gate* to_clk_gate (struct clk_hw*) ;
 struct stm32_ready_gate* to_ready_gate_clk (struct clk_gate*) ;
 int udelay (int) ;

__attribute__((used)) static int ready_gate_clk_enable(struct clk_hw *hw)
{
 struct clk_gate *gate = to_clk_gate(hw);
 struct stm32_ready_gate *rgate = to_ready_gate_clk(gate);
 int bit_status;
 unsigned int timeout = RGATE_TIMEOUT;

 if (clk_gate_ops.is_enabled(hw))
  return 0;

 clk_gate_ops.enable(hw);






 do {
  bit_status = !(readl(gate->reg) & BIT(rgate->bit_rdy));

  if (bit_status)
   udelay(100);

 } while (bit_status && --timeout);

 return bit_status;
}
