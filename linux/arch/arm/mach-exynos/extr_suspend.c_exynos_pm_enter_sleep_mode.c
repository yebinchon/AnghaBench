
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXYNOS_SLEEP_MAGIC ;
 int S5P_INFORM1 ;
 int SYS_SLEEP ;
 int exynos_sys_powerdown_conf (int ) ;
 int pmu_raw_writel (int ,int ) ;

__attribute__((used)) static void exynos_pm_enter_sleep_mode(void)
{

 exynos_sys_powerdown_conf(SYS_SLEEP);
 pmu_raw_writel(EXYNOS_SLEEP_MAGIC, S5P_INFORM1);
}
