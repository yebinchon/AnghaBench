
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXYNOS_COMMON_CONFIGURATION (int) ;
 int pmu_raw_writel (int ,int ) ;

void exynos_cluster_power_down(int cluster)
{
 pmu_raw_writel(0, EXYNOS_COMMON_CONFIGURATION(cluster));
}
