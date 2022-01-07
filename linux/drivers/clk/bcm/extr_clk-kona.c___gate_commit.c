
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccu_data {int dummy; } ;
struct bcm_clk_gate {int hw_sw_sel_bit; int en_bit; int status_bit; int offset; } ;


 int BUG_ON (int) ;
 int __ccu_read (struct ccu_data*,int ) ;
 int __ccu_wait_bit (struct ccu_data*,int ,int ,int) ;
 int __ccu_write (struct ccu_data*,int ,int) ;
 int gate_exists (struct bcm_clk_gate*) ;
 int gate_is_enabled (struct bcm_clk_gate*) ;
 scalar_t__ gate_is_hw_controllable (struct bcm_clk_gate*) ;
 int gate_is_no_disable (struct bcm_clk_gate*) ;
 int gate_is_sw_controllable (struct bcm_clk_gate*) ;
 scalar_t__ gate_is_sw_managed (struct bcm_clk_gate*) ;

__attribute__((used)) static bool
__gate_commit(struct ccu_data *ccu, struct bcm_clk_gate *gate)
{
 u32 reg_val;
 u32 mask;
 bool enabled = 0;

 BUG_ON(!gate_exists(gate));
 if (!gate_is_sw_controllable(gate))
  return 1;

 reg_val = __ccu_read(ccu, gate->offset);


 if (gate_is_hw_controllable(gate)) {
  mask = (u32)1 << gate->hw_sw_sel_bit;
  if (gate_is_sw_managed(gate))
   reg_val |= mask;
  else
   reg_val &= ~mask;
 }
 mask = (u32)1 << gate->en_bit;
 if (gate_is_sw_managed(gate) && (enabled = gate_is_enabled(gate)) &&
   !gate_is_no_disable(gate))
  reg_val |= mask;
 else
  reg_val &= ~mask;

 __ccu_write(ccu, gate->offset, reg_val);


 if (!gate_is_sw_managed(gate))
  return 1;


 return __ccu_wait_bit(ccu, gate->offset, gate->status_bit, enabled);
}
