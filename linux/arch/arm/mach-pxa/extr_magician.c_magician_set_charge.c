
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EGPIO_MAGICIAN_NICD_CHARGE ;
 int PDA_POWER_CHARGE_AC ;
 int PDA_POWER_CHARGE_USB ;
 int gpio_set_value (int ,int) ;
 int pr_debug (char*) ;

__attribute__((used)) static void magician_set_charge(int flags)
{
 if (flags & PDA_POWER_CHARGE_AC) {
  pr_debug("Charging from AC\n");
  gpio_set_value(EGPIO_MAGICIAN_NICD_CHARGE, 1);
 } else if (flags & PDA_POWER_CHARGE_USB) {
  pr_debug("Charging from USB\n");
  gpio_set_value(EGPIO_MAGICIAN_NICD_CHARGE, 1);
 } else {
  pr_debug("Charging disabled\n");
  gpio_set_value(EGPIO_MAGICIAN_NICD_CHARGE, 0);
 }
}
