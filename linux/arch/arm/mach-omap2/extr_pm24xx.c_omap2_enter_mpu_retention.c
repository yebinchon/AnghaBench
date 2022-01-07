
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CORE_MOD ;
 int OMAP24XX_PM_WKST2 ;
 int PM_WKST ;
 int PM_WKST1 ;
 int PWRDM_POWER_ON ;
 int PWRDM_POWER_RET ;
 int WKUP_MOD ;
 int mpu_pwrdm ;
 scalar_t__ omap2_allow_mpu_retention () ;
 int omap_prm_clear_mod_irqs (int ,int ,int ) ;
 int pwrdm_set_next_pwrst (int ,int ) ;

__attribute__((used)) static void omap2_enter_mpu_retention(void)
{
 const int zero = 0;



 if (omap2_allow_mpu_retention()) {

  omap_prm_clear_mod_irqs(CORE_MOD, PM_WKST1, ~0);
  omap_prm_clear_mod_irqs(CORE_MOD, OMAP24XX_PM_WKST2, ~0);
  omap_prm_clear_mod_irqs(WKUP_MOD, PM_WKST, ~0);


  pwrdm_set_next_pwrst(mpu_pwrdm, PWRDM_POWER_RET);

 } else {

  pwrdm_set_next_pwrst(mpu_pwrdm, PWRDM_POWER_ON);
 }


 asm("mcr p15, 0, %0, c7, c0, 4" : : "r" (zero) : "memory", "cc");

 pwrdm_set_next_pwrst(mpu_pwrdm, PWRDM_POWER_ON);
}
