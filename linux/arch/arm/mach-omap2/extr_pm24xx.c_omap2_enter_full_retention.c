
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CORE_MOD ;
 int OCP_MOD ;
 int OMAP24XX_PM_WKST2 ;
 int OMAP24XX_USBSTANDBYCTRL ;
 int OMAP2_CONTROL_DEVCONF0 ;
 int OMAP2_PRCM_IRQSTATUS_MPU_OFFSET ;
 int OMAP_SDRC_REGADDR (int ) ;
 int PM_WKST ;
 int PM_WKST1 ;
 int PWRDM_POWER_ON ;
 int PWRDM_POWER_RET ;
 int SDRC_DLLA_CTRL ;
 int SDRC_POWER ;
 int WKUP_MOD ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int core_pwrdm ;
 int cpu_cluster_pm_enter () ;
 int cpu_cluster_pm_exit () ;
 int mpu_pwrdm ;
 int omap2_sram_suspend (int ,int ,int ) ;
 int omap_ctrl_readl (int ) ;
 int omap_ctrl_writel (int,int ) ;
 scalar_t__ omap_irq_pending () ;
 int omap_prm_clear_mod_irqs (int ,int ,int) ;
 int osc_ck ;
 int pwrdm_set_next_pwrst (int ,int ) ;
 int sdrc_read_reg (int ) ;

__attribute__((used)) static int omap2_enter_full_retention(void)
{
 u32 l;






 clk_disable(osc_ck);



 omap_prm_clear_mod_irqs(CORE_MOD, PM_WKST1, ~0);
 omap_prm_clear_mod_irqs(CORE_MOD, OMAP24XX_PM_WKST2, ~0);
 omap_prm_clear_mod_irqs(WKUP_MOD, PM_WKST, ~0);

 pwrdm_set_next_pwrst(core_pwrdm, PWRDM_POWER_RET);
 pwrdm_set_next_pwrst(mpu_pwrdm, PWRDM_POWER_RET);


 l = omap_ctrl_readl(OMAP2_CONTROL_DEVCONF0) | OMAP24XX_USBSTANDBYCTRL;
 omap_ctrl_writel(l, OMAP2_CONTROL_DEVCONF0);

 cpu_cluster_pm_enter();



 if (omap_irq_pending())
  goto no_sleep;


 omap2_sram_suspend(sdrc_read_reg(SDRC_DLLA_CTRL),
      OMAP_SDRC_REGADDR(SDRC_DLLA_CTRL),
      OMAP_SDRC_REGADDR(SDRC_POWER));

no_sleep:
 cpu_cluster_pm_exit();

 clk_enable(osc_ck);


 omap_prm_clear_mod_irqs(CORE_MOD, PM_WKST1, ~0);
 omap_prm_clear_mod_irqs(CORE_MOD, OMAP24XX_PM_WKST2, ~0);


 omap_prm_clear_mod_irqs(WKUP_MOD, PM_WKST, 0x4 | 0x1);


 omap_prm_clear_mod_irqs(OCP_MOD, OMAP2_PRCM_IRQSTATUS_MPU_OFFSET, 0x1);

 omap_prm_clear_mod_irqs(OCP_MOD, OMAP2_PRCM_IRQSTATUS_MPU_OFFSET, 0x20);

 pwrdm_set_next_pwrst(mpu_pwrdm, PWRDM_POWER_ON);
 pwrdm_set_next_pwrst(core_pwrdm, PWRDM_POWER_ON);

 return 0;
}
