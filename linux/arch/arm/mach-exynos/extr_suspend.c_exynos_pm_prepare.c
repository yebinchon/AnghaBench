
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S5P_INFORM0 ;
 int __pa_symbol (int ) ;
 int exynos_cpu_resume ;
 int exynos_pm_enter_sleep_mode () ;
 int exynos_pm_set_wakeup_mask () ;
 int exynos_set_delayed_reset_assertion (int) ;
 int pmu_raw_writel (int ,int ) ;

__attribute__((used)) static void exynos_pm_prepare(void)
{
 exynos_set_delayed_reset_assertion(0);


 exynos_pm_set_wakeup_mask();

 exynos_pm_enter_sleep_mode();


 pmu_raw_writel(__pa_symbol(exynos_cpu_resume), S5P_INFORM0);
}
