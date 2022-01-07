
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EXYNOS_EINT_WAKEUP_MASK ;
 int pmu_raw_readl (int ) ;

__attribute__((used)) static u32 exynos_read_eint_wakeup_mask(void)
{
 return pmu_raw_readl(EXYNOS_EINT_WAKEUP_MASK);
}
