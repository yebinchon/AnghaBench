
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int REBOOT_SOFT ;
 int samsung_wdt_reset () ;
 int soft_restart (int ) ;

void s3c64xx_restart(enum reboot_mode mode, const char *cmd)
{
 if (mode != REBOOT_SOFT)
  samsung_wdt_reset();


 soft_restart(0);
}
