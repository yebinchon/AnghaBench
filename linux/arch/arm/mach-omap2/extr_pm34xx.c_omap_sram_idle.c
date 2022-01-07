
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ OMAP2_DEVICE_TYPE_EMU ;
 scalar_t__ OMAP2_DEVICE_TYPE_SEC ;
 scalar_t__ OMAP3430_REV_ES3_0 ;



 int SDRC_POWER ;
 int core_pwrdm ;
 int cpu_cluster_pm_enter () ;
 int cpu_cluster_pm_exit () ;
 scalar_t__ cpu_is_omap3430 () ;
 int cpu_suspend (int,int (*) (int)) ;
 int mpu_pwrdm ;
 int neon_pwrdm ;
 int omap2_sms_restore_context () ;
 int omap34xx_do_sram_idle (int) ;
 int omap34xx_save_context (int ) ;
 int omap3_arm_context ;
 int omap3_cm_restore_context () ;
 int omap3_cm_save_context () ;
 int omap3_core_restore_context () ;
 int omap3_core_save_context () ;
 int omap3_intc_prepare_idle () ;
 int omap3_intc_resume_idle () ;
 int omap3_sram_restore_context () ;
 int omap3_vc_set_pmic_signaling (int) ;
 scalar_t__ omap_rev () ;
 scalar_t__ omap_type () ;
 int per_pwrdm ;
 int pr_err (char*) ;
 int pwrdm_post_transition (int *) ;
 int pwrdm_pre_transition (int *) ;
 int pwrdm_read_next_pwrst (int ) ;
 int const pwrdm_read_prev_pwrst (int ) ;
 int pwrdm_read_pwrst (int ) ;
 int pwrdm_set_next_pwrst (int ,int) ;
 int sdrc_read_reg (int ) ;
 int sdrc_write_reg (int ,int ) ;

void omap_sram_idle(void)
{






 int save_state = 0;
 int mpu_next_state = 129;
 int per_next_state = 129;
 int core_next_state = 129;
 u32 sdrc_pwr = 0;

 mpu_next_state = pwrdm_read_next_pwrst(mpu_pwrdm);
 switch (mpu_next_state) {
 case 129:
 case 128:

  save_state = 0;
  break;
 case 130:
  save_state = 3;
  break;
 default:

  pr_err("Invalid mpu state in sram_idle\n");
  return;
 }


 if (pwrdm_read_pwrst(neon_pwrdm) == 129)
  pwrdm_set_next_pwrst(neon_pwrdm, mpu_next_state);


 per_next_state = pwrdm_read_next_pwrst(per_pwrdm);
 core_next_state = pwrdm_read_next_pwrst(core_pwrdm);

 pwrdm_pre_transition(((void*)0));


 if (per_next_state == 130)
  cpu_cluster_pm_enter();


 if (core_next_state < 129) {
  if (core_next_state == 130) {
   omap3_core_save_context();
   omap3_cm_save_context();
  }
 }


 omap3_vc_set_pmic_signaling(core_next_state);

 omap3_intc_prepare_idle();







 if (cpu_is_omap3430() && omap_rev() >= OMAP3430_REV_ES3_0 &&
     (omap_type() == OMAP2_DEVICE_TYPE_EMU ||
      omap_type() == OMAP2_DEVICE_TYPE_SEC) &&
     core_next_state == 130)
  sdrc_pwr = sdrc_read_reg(SDRC_POWER);






 if (save_state)
  omap34xx_save_context(omap3_arm_context);
 if (save_state == 1 || save_state == 3)
  cpu_suspend(save_state, omap34xx_do_sram_idle);
 else
  omap34xx_do_sram_idle(save_state);


 if (cpu_is_omap3430() && omap_rev() >= OMAP3430_REV_ES3_0 &&
     (omap_type() == OMAP2_DEVICE_TYPE_EMU ||
      omap_type() == OMAP2_DEVICE_TYPE_SEC) &&
     core_next_state == 130)
  sdrc_write_reg(sdrc_pwr, SDRC_POWER);


 if (core_next_state < 129 &&
     pwrdm_read_prev_pwrst(core_pwrdm) == 130) {
  omap3_core_restore_context();
  omap3_cm_restore_context();
  omap3_sram_restore_context();
  omap2_sms_restore_context();
 } else {





  omap3_intc_resume_idle();
 }

 pwrdm_post_transition(((void*)0));


 if (per_next_state == 130)
  cpu_cluster_pm_exit();
}
