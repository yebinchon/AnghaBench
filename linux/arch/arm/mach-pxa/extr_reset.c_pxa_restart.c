
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;





 int RESET_STATUS_ALL ;
 int clear_reset_status (int ) ;
 int do_gpio_reset () ;
 int do_hw_reset () ;
 int local_fiq_disable () ;
 int local_irq_disable () ;
 int soft_restart (int ) ;

void pxa_restart(enum reboot_mode mode, const char *cmd)
{
 local_irq_disable();
 local_fiq_disable();

 clear_reset_status(RESET_STATUS_ALL);

 switch (mode) {
 case 128:

  soft_restart(0);
  break;
 case 130:
  do_gpio_reset();
  break;
 case 129:
 default:
  do_hw_reset();
  break;
 }
}
