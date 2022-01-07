
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_clk_hyst {int val_bit; int en_bit; } ;


 int bit_posn_valid (int ,char*,char const*) ;

__attribute__((used)) static bool hyst_valid(struct bcm_clk_hyst *hyst, const char *clock_name)
{
 if (!bit_posn_valid(hyst->en_bit, "hysteresis enable", clock_name))
  return 0;

 if (!bit_posn_valid(hyst->val_bit, "hysteresis value", clock_name))
  return 0;

 return 1;
}
