
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int REBOOT_HARD ;
 int cpu_do_idle () ;
 int highbank_set_pwr_hard_reset () ;
 int highbank_set_pwr_soft_reset () ;

void highbank_restart(enum reboot_mode mode, const char *cmd)
{
 if (mode == REBOOT_HARD)
  highbank_set_pwr_hard_reset();
 else
  highbank_set_pwr_soft_reset();

 while (1)
  cpu_do_idle();
}
