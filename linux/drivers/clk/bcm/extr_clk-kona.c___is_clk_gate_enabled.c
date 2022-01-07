
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccu_data {int dummy; } ;
struct bcm_clk_gate {int status_bit; int offset; } ;


 int __ccu_read (struct ccu_data*,int ) ;
 int gate_exists (struct bcm_clk_gate*) ;

__attribute__((used)) static bool
__is_clk_gate_enabled(struct ccu_data *ccu, struct bcm_clk_gate *gate)
{
 u32 bit_mask;
 u32 reg_val;


 if (!gate_exists(gate))
  return 1;

 bit_mask = 1 << gate->status_bit;
 reg_val = __ccu_read(ccu, gate->offset);

 return (reg_val & bit_mask) != 0;
}
