
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pmu_spare3; scalar_t__ sysram_phys; scalar_t__ secure_firmware; scalar_t__ sysram_base; int cpu_state; } ;


 scalar_t__ EXYNOS5420_CPU_STATE ;
 unsigned long EXYNOS5420_EMULATION ;
 int EXYNOS5420_FSYS2_OPTION ;
 int EXYNOS5420_PSGEN_OPTION ;
 int EXYNOS5420_SFR_AXI_CGDIS1 ;
 unsigned long EXYNOS5420_UFS ;
 int EXYNOS5420_USE_STANDBY_WFI_ALL ;
 int EXYNOS5_ARM_CORE0_SYS_PWR_REG ;
 int EXYNOS_AFTR_MAGIC ;
 int S5P_CENTRAL_SEQ_OPTION ;
 unsigned long S5P_CORE_LOCAL_PWR_EN ;
 int S5P_INFORM1 ;
 int S5P_PMU_SPARE3 ;
 int SMC_CMD_REG ;
 int SMC_REG_ID_SFR_W (scalar_t__) ;
 scalar_t__ exynos_pm_central_resume () ;
 int exynos_smc (int ,int ,int ,int ) ;
 TYPE_1__ pm_state ;
 unsigned long pmu_raw_readl (int ) ;
 int pmu_raw_writel (int,int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void exynos5420_pm_resume(void)
{
 unsigned long tmp;


 tmp = pmu_raw_readl(EXYNOS5_ARM_CORE0_SYS_PWR_REG);
 pmu_raw_writel(tmp | S5P_CORE_LOCAL_PWR_EN,
         EXYNOS5_ARM_CORE0_SYS_PWR_REG);


 writel_relaxed(pm_state.cpu_state,
         pm_state.sysram_base + EXYNOS5420_CPU_STATE);
 if (pm_state.secure_firmware)
  exynos_smc(SMC_CMD_REG,
      SMC_REG_ID_SFR_W(pm_state.sysram_phys +
         EXYNOS5420_CPU_STATE),
      EXYNOS_AFTR_MAGIC, 0);

 pmu_raw_writel(EXYNOS5420_USE_STANDBY_WFI_ALL,
   S5P_CENTRAL_SEQ_OPTION);

 if (exynos_pm_central_resume())
  goto early_wakeup;

 pmu_raw_writel(pm_state.pmu_spare3, S5P_PMU_SPARE3);

early_wakeup:

 tmp = pmu_raw_readl(EXYNOS5420_SFR_AXI_CGDIS1);
 tmp &= ~EXYNOS5420_UFS;
 pmu_raw_writel(tmp, EXYNOS5420_SFR_AXI_CGDIS1);

 tmp = pmu_raw_readl(EXYNOS5420_FSYS2_OPTION);
 tmp &= ~EXYNOS5420_EMULATION;
 pmu_raw_writel(tmp, EXYNOS5420_FSYS2_OPTION);

 tmp = pmu_raw_readl(EXYNOS5420_PSGEN_OPTION);
 tmp &= ~EXYNOS5420_EMULATION;
 pmu_raw_writel(tmp, EXYNOS5420_PSGEN_OPTION);


 pmu_raw_writel(0x0, S5P_INFORM1);
}
