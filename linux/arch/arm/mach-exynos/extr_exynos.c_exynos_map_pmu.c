
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int exynos_dt_pmu_match ;
 struct device_node* of_find_matching_node (int *,int ) ;
 int of_iomap (struct device_node*,int ) ;
 int pmu_base_addr ;

__attribute__((used)) static void exynos_map_pmu(void)
{
 struct device_node *np;

 np = of_find_matching_node(((void*)0), exynos_dt_pmu_match);
 if (np)
  pmu_base_addr = of_iomap(np, 0);
}
