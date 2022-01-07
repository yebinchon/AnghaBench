
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWRDM_POWER_OFF ;
 int gfx_pwrdm ;
 int omap_set_pwrdm_state (int ,int ) ;

__attribute__((used)) static void amx3_pre_suspend_common(void)
{
 omap_set_pwrdm_state(gfx_pwrdm, PWRDM_POWER_OFF);
}
