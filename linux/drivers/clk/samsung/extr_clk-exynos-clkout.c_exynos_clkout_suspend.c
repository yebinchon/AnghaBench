
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ reg; int pmu_debug_save; } ;


 scalar_t__ EXYNOS_PMU_DEBUG_REG ;
 TYPE_1__* clkout ;
 int readl (scalar_t__) ;

__attribute__((used)) static int exynos_clkout_suspend(void)
{
 clkout->pmu_debug_save = readl(clkout->reg + EXYNOS_PMU_DEBUG_REG);

 return 0;
}
