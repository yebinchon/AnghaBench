
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ OMAP2_DEVICE_TYPE_GP ;
 int OMAP3_SAVE_SECURE_RAM_SZ ;
 int PWRDM_POWER_ON ;
 int mpu_pwrdm ;
 scalar_t__ omap3_save_secure_ram (int ,int ) ;
 int omap3_secure_ram_storage ;
 scalar_t__ omap_type () ;
 int pr_err (char*,scalar_t__) ;
 int pwrdm_read_next_pwrst (int ) ;
 int pwrdm_set_next_pwrst (int ,int) ;

__attribute__((used)) static void omap3_save_secure_ram_context(void)
{
 u32 ret;
 int mpu_next_state = pwrdm_read_next_pwrst(mpu_pwrdm);

 if (omap_type() != OMAP2_DEVICE_TYPE_GP) {





  pwrdm_set_next_pwrst(mpu_pwrdm, PWRDM_POWER_ON);
  ret = omap3_save_secure_ram(omap3_secure_ram_storage,
         OMAP3_SAVE_SECURE_RAM_SZ);
  pwrdm_set_next_pwrst(mpu_pwrdm, mpu_next_state);

  if (ret) {
   pr_err("save_secure_sram() returns %08x\n", ret);
   while (1)
    ;
  }
 }
}
