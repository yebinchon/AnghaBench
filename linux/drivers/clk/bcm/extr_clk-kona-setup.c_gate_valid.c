
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_clk_gate {int hw_sw_sel_bit; int en_bit; int status_bit; } ;


 int BUG_ON (int) ;
 int bit_posn_valid (int ,char*,char const*) ;
 scalar_t__ gate_is_hw_controllable (struct bcm_clk_gate*) ;
 scalar_t__ gate_is_sw_controllable (struct bcm_clk_gate*) ;

__attribute__((used)) static bool gate_valid(struct bcm_clk_gate *gate, const char *field_name,
   const char *clock_name)
{
 if (!bit_posn_valid(gate->status_bit, "gate status", clock_name))
  return 0;

 if (gate_is_sw_controllable(gate)) {
  if (!bit_posn_valid(gate->en_bit, "gate enable", clock_name))
   return 0;

  if (gate_is_hw_controllable(gate)) {
   if (!bit_posn_valid(gate->hw_sw_sel_bit,
      "gate hw/sw select",
      clock_name))
    return 0;
  }
 } else {
  BUG_ON(!gate_is_hw_controllable(gate));
 }

 return 1;
}
