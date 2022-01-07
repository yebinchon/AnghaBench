
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLAT_PM_LPM20 ;
 int rcpm_v2_plat_enter_state (int ) ;

__attribute__((used)) static int rcpm_v2_plat_enter_sleep(void)
{
 return rcpm_v2_plat_enter_state(PLAT_PM_LPM20);
}
