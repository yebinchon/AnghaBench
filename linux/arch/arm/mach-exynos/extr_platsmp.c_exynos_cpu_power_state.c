
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXYNOS_ARM_CORE_STATUS (int) ;
 int S5P_CORE_LOCAL_PWR_EN ;
 int pmu_raw_readl (int ) ;

int exynos_cpu_power_state(int cpu)
{
 return (pmu_raw_readl(EXYNOS_ARM_CORE_STATUS(cpu)) &
   S5P_CORE_LOCAL_PWR_EN);
}
