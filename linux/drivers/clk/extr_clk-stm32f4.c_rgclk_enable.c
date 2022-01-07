
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_rgate {int bit_rdy_idx; } ;
struct clk_hw {int dummy; } ;
struct clk_gate {int reg; } ;
struct TYPE_2__ {int (* enable ) (struct clk_hw*) ;scalar_t__ (* is_enabled ) (struct clk_hw*) ;} ;


 int BIT (int ) ;
 unsigned int RGATE_TIMEOUT ;
 TYPE_1__ clk_gate_ops ;
 int disable_power_domain_write_protection () ;
 int enable_power_domain_write_protection () ;
 int readl (int ) ;
 scalar_t__ stub1 (struct clk_hw*) ;
 int stub2 (struct clk_hw*) ;
 struct clk_gate* to_clk_gate (struct clk_hw*) ;
 struct stm32_rgate* to_rgclk (struct clk_gate*) ;
 int udelay (int) ;

__attribute__((used)) static int rgclk_enable(struct clk_hw *hw)
{
 struct clk_gate *gate = to_clk_gate(hw);
 struct stm32_rgate *rgate = to_rgclk(gate);
 int bit_status;
 unsigned int timeout = RGATE_TIMEOUT;

 if (clk_gate_ops.is_enabled(hw))
  return 0;

 disable_power_domain_write_protection();

 clk_gate_ops.enable(hw);

 do {
  bit_status = !(readl(gate->reg) & BIT(rgate->bit_rdy_idx));
  if (bit_status)
   udelay(100);

 } while (bit_status && --timeout);

 enable_power_domain_write_protection();

 return bit_status;
}
