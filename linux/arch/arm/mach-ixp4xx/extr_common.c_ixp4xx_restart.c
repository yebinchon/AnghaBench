
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int* IXP4XX_OSWE ;
 int * IXP4XX_OSWK ;
 scalar_t__* IXP4XX_OSWT ;
 int IXP4XX_WDT_COUNT_ENABLE ;
 int IXP4XX_WDT_KEY ;
 int IXP4XX_WDT_RESET_ENABLE ;
 int REBOOT_SOFT ;
 int soft_restart (int ) ;

void ixp4xx_restart(enum reboot_mode mode, const char *cmd)
{
 if (mode == REBOOT_SOFT) {

  soft_restart(0);
 } else {





  *IXP4XX_OSWK = IXP4XX_WDT_KEY;


  *IXP4XX_OSWT = 0;

  *IXP4XX_OSWE = IXP4XX_WDT_RESET_ENABLE | IXP4XX_WDT_COUNT_ENABLE;
 }
}
