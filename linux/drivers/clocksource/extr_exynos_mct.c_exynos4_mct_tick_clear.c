
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mct_clock_event_device {scalar_t__ base; } ;


 scalar_t__ MCT_L_INT_CSTAT_OFFSET ;
 int exynos4_mct_write (int,scalar_t__) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ reg_base ;

__attribute__((used)) static void exynos4_mct_tick_clear(struct mct_clock_event_device *mevt)
{

 if (readl_relaxed(reg_base + mevt->base + MCT_L_INT_CSTAT_OFFSET) & 1)
  exynos4_mct_write(0x1, mevt->base + MCT_L_INT_CSTAT_OFFSET);
}
