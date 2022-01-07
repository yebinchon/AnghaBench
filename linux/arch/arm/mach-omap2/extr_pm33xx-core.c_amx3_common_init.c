
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 scalar_t__ OMAP2_DEVICE_TYPE_GP ;
 int PWRDM_POWER_OFF ;
 void* cefuse_pwrdm ;
 int clkdm_for_each (int ,int *) ;
 void* gfx_pwrdm ;
 void* mpu_pwrdm ;
 int omap_pm_clkdms_setup ;
 int omap_set_pwrdm_state (void*,int ) ;
 scalar_t__ omap_type () ;
 void* per_pwrdm ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 void* pwrdm_lookup (char*) ;

__attribute__((used)) static int amx3_common_init(void)
{
 gfx_pwrdm = pwrdm_lookup("gfx_pwrdm");
 per_pwrdm = pwrdm_lookup("per_pwrdm");
 mpu_pwrdm = pwrdm_lookup("mpu_pwrdm");

 if ((!gfx_pwrdm) || (!per_pwrdm) || (!mpu_pwrdm))
  return -ENODEV;

 (void)clkdm_for_each(omap_pm_clkdms_setup, ((void*)0));


 cefuse_pwrdm = pwrdm_lookup("cefuse_pwrdm");
 if (!cefuse_pwrdm)
  pr_err("PM: Failed to get cefuse_pwrdm\n");
 else if (omap_type() != OMAP2_DEVICE_TYPE_GP)
  pr_info("PM: Leaving EFUSE power domain active\n");
 else
  omap_set_pwrdm_state(cefuse_pwrdm, PWRDM_POWER_OFF);

 return 0;
}
