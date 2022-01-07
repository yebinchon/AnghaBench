
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sysram_phys; scalar_t__ secure_firmware; scalar_t__ sysram_base; int cpu_state; void* pmu_spare3; } ;


 int CONFIG_EXYNOS_MCPM ;
 int EXYNOS5420_ARM_COMMON_OPTION ;
 scalar_t__ EXYNOS5420_CPU_STATE ;
 unsigned int EXYNOS5420_EMULATION ;
 int EXYNOS5420_FSYS2_OPTION ;
 unsigned int EXYNOS5420_L2RSTDISABLE_VALUE ;
 int EXYNOS5420_PSGEN_OPTION ;
 int EXYNOS5420_SFR_AXI_CGDIS1 ;
 unsigned int EXYNOS5420_UFS ;
 int EXYNOS_L2_OPTION (int ) ;
 unsigned int EXYNOS_L2_USE_RETENTION ;
 scalar_t__ IS_ENABLED (int ) ;
 int S5P_INFORM0 ;
 int S5P_PMU_SPARE3 ;
 int SMC_CMD_REG ;
 int SMC_REG_ID_SFR_W (scalar_t__) ;
 unsigned int __pa_symbol (int ) ;
 int exynos_pm_enter_sleep_mode () ;
 int exynos_pm_set_wakeup_mask () ;
 int exynos_smc (int ,int ,int ,int ) ;
 int mcpm_entry_point ;
 TYPE_1__ pm_state ;
 void* pmu_raw_readl (int ) ;
 int pmu_raw_writel (unsigned int,int ) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void exynos5420_pm_prepare(void)
{
 unsigned int tmp;


 exynos_pm_set_wakeup_mask();

 pm_state.pmu_spare3 = pmu_raw_readl(S5P_PMU_SPARE3);







 pm_state.cpu_state = readl_relaxed(pm_state.sysram_base +
        EXYNOS5420_CPU_STATE);
 writel_relaxed(0x0, pm_state.sysram_base + EXYNOS5420_CPU_STATE);
 if (pm_state.secure_firmware)
  exynos_smc(SMC_CMD_REG, SMC_REG_ID_SFR_W(pm_state.sysram_phys +
        EXYNOS5420_CPU_STATE),
      0, 0);

 exynos_pm_enter_sleep_mode();


 if (IS_ENABLED(CONFIG_EXYNOS_MCPM))
  pmu_raw_writel(__pa_symbol(mcpm_entry_point), S5P_INFORM0);

 tmp = pmu_raw_readl(EXYNOS_L2_OPTION(0));
 tmp &= ~EXYNOS_L2_USE_RETENTION;
 pmu_raw_writel(tmp, EXYNOS_L2_OPTION(0));

 tmp = pmu_raw_readl(EXYNOS5420_SFR_AXI_CGDIS1);
 tmp |= EXYNOS5420_UFS;
 pmu_raw_writel(tmp, EXYNOS5420_SFR_AXI_CGDIS1);

 tmp = pmu_raw_readl(EXYNOS5420_ARM_COMMON_OPTION);
 tmp &= ~EXYNOS5420_L2RSTDISABLE_VALUE;
 pmu_raw_writel(tmp, EXYNOS5420_ARM_COMMON_OPTION);

 tmp = pmu_raw_readl(EXYNOS5420_FSYS2_OPTION);
 tmp |= EXYNOS5420_EMULATION;
 pmu_raw_writel(tmp, EXYNOS5420_FSYS2_OPTION);

 tmp = pmu_raw_readl(EXYNOS5420_PSGEN_OPTION);
 tmp |= EXYNOS5420_EMULATION;
 pmu_raw_writel(tmp, EXYNOS5420_PSGEN_OPTION);
}
