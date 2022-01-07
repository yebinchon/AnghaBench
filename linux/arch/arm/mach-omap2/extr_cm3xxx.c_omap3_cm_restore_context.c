
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cm_clkout_ctrl; int usbhost_cm_sleepdep; int per_cm_sleepdep; int cam_cm_sleepdep; int dss_cm_sleepdep; int sgx_cm_sleepdep; int usbhost_cm_autoidle; int per_cm_autoidle; int cam_cm_autoidle; int dss_cm_autoidle; int wkup_cm_autoidle; int core_cm_autoidle3; int core_cm_autoidle2; int core_cm_autoidle1; int usbhost_cm_clkstctrl; int neon_cm_clkstctrl; int per_cm_clkstctrl; int cam_cm_clkstctrl; int dss_cm_clkstctrl; int sgx_cm_clkstctrl; int core_cm_clkstctrl; int mpu_cm_clkstctrl; int iva2_cm_clkstctrl; int mpu_cm_autoidle2; int iva2_cm_autoidle2; int usbhost_cm_iclken; int per_cm_iclken; int cam_cm_iclken; int dss_cm_iclken; int wkup_cm_iclken; int sgx_cm_iclken; int core_cm_iclken3; int core_cm_iclken2; int core_cm_iclken1; int usbhost_cm_fclken; int per_cm_fclken; int cam_cm_fclken; int dss_cm_fclken; int wkup_cm_fclken; int sgx_cm_fclken; int core_cm_fclken3; int core_cm_fclken1; int iva2_cm_clken_pll; int iva2_cm_fclken; int cm_polctrl; int pll_cm_clken2; int pll_cm_clksel5; int pll_cm_clksel4; int pll_cm_autoidle2; int pll_cm_autoidle; int emu_cm_clkstctrl; int emu_cm_clksel; int per_cm_clksel; int cam_cm_clksel; int dss_cm_clksel; int sgx_cm_clksel; int cm_sysconfig; int iva2_cm_clksel2; int iva2_cm_clksel1; } ;


 int CM_AUTOIDLE ;
 int CM_AUTOIDLE1 ;
 int CM_AUTOIDLE2 ;
 int CM_AUTOIDLE3 ;
 int CM_CLKSEL ;
 int CM_CLKSEL1 ;
 int CM_CLKSEL2 ;
 int CM_FCLKEN ;
 int CM_FCLKEN1 ;
 int CM_ICLKEN ;
 int CM_ICLKEN1 ;
 int CM_ICLKEN2 ;
 int CM_ICLKEN3 ;
 int CORE_MOD ;
 int MPU_MOD ;
 int OCP_MOD ;
 int OMAP2_CM_CLKSTCTRL ;
 int OMAP3430ES2_CM_CLKEN2 ;
 int OMAP3430ES2_CM_CLKSEL4 ;
 int OMAP3430ES2_CM_CLKSEL5 ;
 int OMAP3430ES2_CM_FCLKEN3 ;
 int OMAP3430ES2_SGX_MOD ;
 int OMAP3430ES2_USBHOST_MOD ;
 int OMAP3430_CAM_MOD ;
 int OMAP3430_CCR_MOD ;
 int OMAP3430_CM_CLKEN_PLL ;
 int OMAP3430_CM_POLCTRL ;
 int OMAP3430_CM_SLEEPDEP ;
 int OMAP3430_CM_SYSCONFIG ;
 int OMAP3430_DSS_MOD ;
 int OMAP3430_EMU_MOD ;
 int OMAP3430_IVA2_MOD ;
 int OMAP3430_NEON_MOD ;
 int OMAP3430_PER_MOD ;
 int OMAP3_CM_CLKOUT_CTRL_OFFSET ;
 int PLL_MOD ;
 int WKUP_MOD ;
 TYPE_1__ cm_context ;
 int omap2_cm_write_mod_reg (int ,int ,int ) ;

void omap3_cm_restore_context(void)
{
 omap2_cm_write_mod_reg(cm_context.iva2_cm_clksel1, OMAP3430_IVA2_MOD,
          CM_CLKSEL1);
 omap2_cm_write_mod_reg(cm_context.iva2_cm_clksel2, OMAP3430_IVA2_MOD,
          CM_CLKSEL2);
 omap2_cm_write_mod_reg(cm_context.cm_sysconfig, OCP_MOD,
          OMAP3430_CM_SYSCONFIG);
 omap2_cm_write_mod_reg(cm_context.sgx_cm_clksel, OMAP3430ES2_SGX_MOD,
          CM_CLKSEL);
 omap2_cm_write_mod_reg(cm_context.dss_cm_clksel, OMAP3430_DSS_MOD,
          CM_CLKSEL);
 omap2_cm_write_mod_reg(cm_context.cam_cm_clksel, OMAP3430_CAM_MOD,
          CM_CLKSEL);
 omap2_cm_write_mod_reg(cm_context.per_cm_clksel, OMAP3430_PER_MOD,
          CM_CLKSEL);
 omap2_cm_write_mod_reg(cm_context.emu_cm_clksel, OMAP3430_EMU_MOD,
          CM_CLKSEL1);
 omap2_cm_write_mod_reg(cm_context.emu_cm_clkstctrl, OMAP3430_EMU_MOD,
          OMAP2_CM_CLKSTCTRL);





 omap2_cm_write_mod_reg(cm_context.pll_cm_autoidle, PLL_MOD,
          CM_AUTOIDLE);
 omap2_cm_write_mod_reg(cm_context.pll_cm_autoidle2, PLL_MOD,
          CM_AUTOIDLE2);
 omap2_cm_write_mod_reg(cm_context.pll_cm_clksel4, PLL_MOD,
          OMAP3430ES2_CM_CLKSEL4);
 omap2_cm_write_mod_reg(cm_context.pll_cm_clksel5, PLL_MOD,
          OMAP3430ES2_CM_CLKSEL5);
 omap2_cm_write_mod_reg(cm_context.pll_cm_clken2, PLL_MOD,
          OMAP3430ES2_CM_CLKEN2);
 omap2_cm_write_mod_reg(cm_context.cm_polctrl, OCP_MOD,
          OMAP3430_CM_POLCTRL);
 omap2_cm_write_mod_reg(cm_context.iva2_cm_fclken, OMAP3430_IVA2_MOD,
          CM_FCLKEN);
 omap2_cm_write_mod_reg(cm_context.iva2_cm_clken_pll, OMAP3430_IVA2_MOD,
          OMAP3430_CM_CLKEN_PLL);
 omap2_cm_write_mod_reg(cm_context.core_cm_fclken1, CORE_MOD,
          CM_FCLKEN1);
 omap2_cm_write_mod_reg(cm_context.core_cm_fclken3, CORE_MOD,
          OMAP3430ES2_CM_FCLKEN3);
 omap2_cm_write_mod_reg(cm_context.sgx_cm_fclken, OMAP3430ES2_SGX_MOD,
          CM_FCLKEN);
 omap2_cm_write_mod_reg(cm_context.wkup_cm_fclken, WKUP_MOD, CM_FCLKEN);
 omap2_cm_write_mod_reg(cm_context.dss_cm_fclken, OMAP3430_DSS_MOD,
          CM_FCLKEN);
 omap2_cm_write_mod_reg(cm_context.cam_cm_fclken, OMAP3430_CAM_MOD,
          CM_FCLKEN);
 omap2_cm_write_mod_reg(cm_context.per_cm_fclken, OMAP3430_PER_MOD,
          CM_FCLKEN);
 omap2_cm_write_mod_reg(cm_context.usbhost_cm_fclken,
          OMAP3430ES2_USBHOST_MOD, CM_FCLKEN);
 omap2_cm_write_mod_reg(cm_context.core_cm_iclken1, CORE_MOD,
          CM_ICLKEN1);
 omap2_cm_write_mod_reg(cm_context.core_cm_iclken2, CORE_MOD,
          CM_ICLKEN2);
 omap2_cm_write_mod_reg(cm_context.core_cm_iclken3, CORE_MOD,
          CM_ICLKEN3);
 omap2_cm_write_mod_reg(cm_context.sgx_cm_iclken, OMAP3430ES2_SGX_MOD,
          CM_ICLKEN);
 omap2_cm_write_mod_reg(cm_context.wkup_cm_iclken, WKUP_MOD, CM_ICLKEN);
 omap2_cm_write_mod_reg(cm_context.dss_cm_iclken, OMAP3430_DSS_MOD,
          CM_ICLKEN);
 omap2_cm_write_mod_reg(cm_context.cam_cm_iclken, OMAP3430_CAM_MOD,
          CM_ICLKEN);
 omap2_cm_write_mod_reg(cm_context.per_cm_iclken, OMAP3430_PER_MOD,
          CM_ICLKEN);
 omap2_cm_write_mod_reg(cm_context.usbhost_cm_iclken,
          OMAP3430ES2_USBHOST_MOD, CM_ICLKEN);
 omap2_cm_write_mod_reg(cm_context.iva2_cm_autoidle2, OMAP3430_IVA2_MOD,
          CM_AUTOIDLE2);
 omap2_cm_write_mod_reg(cm_context.mpu_cm_autoidle2, MPU_MOD,
          CM_AUTOIDLE2);
 omap2_cm_write_mod_reg(cm_context.iva2_cm_clkstctrl, OMAP3430_IVA2_MOD,
          OMAP2_CM_CLKSTCTRL);
 omap2_cm_write_mod_reg(cm_context.mpu_cm_clkstctrl, MPU_MOD,
          OMAP2_CM_CLKSTCTRL);
 omap2_cm_write_mod_reg(cm_context.core_cm_clkstctrl, CORE_MOD,
          OMAP2_CM_CLKSTCTRL);
 omap2_cm_write_mod_reg(cm_context.sgx_cm_clkstctrl, OMAP3430ES2_SGX_MOD,
          OMAP2_CM_CLKSTCTRL);
 omap2_cm_write_mod_reg(cm_context.dss_cm_clkstctrl, OMAP3430_DSS_MOD,
          OMAP2_CM_CLKSTCTRL);
 omap2_cm_write_mod_reg(cm_context.cam_cm_clkstctrl, OMAP3430_CAM_MOD,
          OMAP2_CM_CLKSTCTRL);
 omap2_cm_write_mod_reg(cm_context.per_cm_clkstctrl, OMAP3430_PER_MOD,
          OMAP2_CM_CLKSTCTRL);
 omap2_cm_write_mod_reg(cm_context.neon_cm_clkstctrl, OMAP3430_NEON_MOD,
          OMAP2_CM_CLKSTCTRL);
 omap2_cm_write_mod_reg(cm_context.usbhost_cm_clkstctrl,
          OMAP3430ES2_USBHOST_MOD, OMAP2_CM_CLKSTCTRL);
 omap2_cm_write_mod_reg(cm_context.core_cm_autoidle1, CORE_MOD,
          CM_AUTOIDLE1);
 omap2_cm_write_mod_reg(cm_context.core_cm_autoidle2, CORE_MOD,
          CM_AUTOIDLE2);
 omap2_cm_write_mod_reg(cm_context.core_cm_autoidle3, CORE_MOD,
          CM_AUTOIDLE3);
 omap2_cm_write_mod_reg(cm_context.wkup_cm_autoidle, WKUP_MOD,
          CM_AUTOIDLE);
 omap2_cm_write_mod_reg(cm_context.dss_cm_autoidle, OMAP3430_DSS_MOD,
          CM_AUTOIDLE);
 omap2_cm_write_mod_reg(cm_context.cam_cm_autoidle, OMAP3430_CAM_MOD,
          CM_AUTOIDLE);
 omap2_cm_write_mod_reg(cm_context.per_cm_autoidle, OMAP3430_PER_MOD,
          CM_AUTOIDLE);
 omap2_cm_write_mod_reg(cm_context.usbhost_cm_autoidle,
          OMAP3430ES2_USBHOST_MOD, CM_AUTOIDLE);
 omap2_cm_write_mod_reg(cm_context.sgx_cm_sleepdep, OMAP3430ES2_SGX_MOD,
          OMAP3430_CM_SLEEPDEP);
 omap2_cm_write_mod_reg(cm_context.dss_cm_sleepdep, OMAP3430_DSS_MOD,
          OMAP3430_CM_SLEEPDEP);
 omap2_cm_write_mod_reg(cm_context.cam_cm_sleepdep, OMAP3430_CAM_MOD,
          OMAP3430_CM_SLEEPDEP);
 omap2_cm_write_mod_reg(cm_context.per_cm_sleepdep, OMAP3430_PER_MOD,
          OMAP3430_CM_SLEEPDEP);
 omap2_cm_write_mod_reg(cm_context.usbhost_cm_sleepdep,
          OMAP3430ES2_USBHOST_MOD, OMAP3430_CM_SLEEPDEP);
 omap2_cm_write_mod_reg(cm_context.cm_clkout_ctrl, OMAP3430_CCR_MOD,
          OMAP3_CM_CLKOUT_CTRL_OFFSET);
}
