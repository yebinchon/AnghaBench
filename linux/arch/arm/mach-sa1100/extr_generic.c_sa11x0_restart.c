
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int REBOOT_SOFT ;
 int RESET_STATUS_ALL ;
 int RSRR ;
 int RSRR_SWR ;
 int clear_reset_status (int ) ;
 int soft_restart (int ) ;

void sa11x0_restart(enum reboot_mode mode, const char *cmd)
{
 clear_reset_status(RESET_STATUS_ALL);

 if (mode == REBOOT_SOFT) {

  soft_restart(0);
 } else {

  RSRR = RSRR_SWR;
 }
}
