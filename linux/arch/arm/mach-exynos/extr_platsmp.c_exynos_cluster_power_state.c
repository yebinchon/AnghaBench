
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXYNOS_COMMON_STATUS (int) ;
 int S5P_CORE_LOCAL_PWR_EN ;
 int pmu_raw_readl (int ) ;

int exynos_cluster_power_state(int cluster)
{
 return (pmu_raw_readl(EXYNOS_COMMON_STATUS(cluster)) &
  S5P_CORE_LOCAL_PWR_EN);
}
