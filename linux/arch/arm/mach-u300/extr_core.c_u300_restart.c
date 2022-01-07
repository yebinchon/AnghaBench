
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;




 int coh901327_watchdog_reset () ;

__attribute__((used)) static void u300_restart(enum reboot_mode mode, const char *cmd)
{
 switch (mode) {
 case 128:
 case 129:



  break;
 default:

  break;
 }

 while (1);
}
