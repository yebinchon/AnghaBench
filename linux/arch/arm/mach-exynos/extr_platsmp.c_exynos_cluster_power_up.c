
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXYNOS_COMMON_CONFIGURATION (int) ;
 int S5P_CORE_LOCAL_PWR_EN ;
 int pmu_raw_writel (int ,int ) ;

void exynos_cluster_power_up(int cluster)
{
 pmu_raw_writel(S5P_CORE_LOCAL_PWR_EN,
   EXYNOS_COMMON_CONFIGURATION(cluster));
}
