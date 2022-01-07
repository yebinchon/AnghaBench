
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXYNOS3_ARM_L2_OPTION ;
 unsigned int EXYNOS5_OPTION_USE_RETENTION ;
 int S5P_INFORM0 ;
 unsigned int __pa_symbol (int ) ;
 int exynos_cpu_resume ;
 int exynos_pm_enter_sleep_mode () ;
 int exynos_pm_set_wakeup_mask () ;
 unsigned int pmu_raw_readl (int ) ;
 int pmu_raw_writel (unsigned int,int ) ;

__attribute__((used)) static void exynos3250_pm_prepare(void)
{
 unsigned int tmp;


 exynos_pm_set_wakeup_mask();

 tmp = pmu_raw_readl(EXYNOS3_ARM_L2_OPTION);
 tmp &= ~EXYNOS5_OPTION_USE_RETENTION;
 pmu_raw_writel(tmp, EXYNOS3_ARM_L2_OPTION);

 exynos_pm_enter_sleep_mode();


 pmu_raw_writel(__pa_symbol(exynos_cpu_resume), S5P_INFORM0);
}
