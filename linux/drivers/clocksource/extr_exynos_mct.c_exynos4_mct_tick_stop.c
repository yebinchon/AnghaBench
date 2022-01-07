
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mct_clock_event_device {unsigned long base; } ;


 unsigned long MCT_L_TCON_INT_START ;
 unsigned long MCT_L_TCON_OFFSET ;
 unsigned long MCT_L_TCON_TIMER_START ;
 int exynos4_mct_write (unsigned long,unsigned long) ;
 unsigned long readl_relaxed (scalar_t__) ;
 scalar_t__ reg_base ;

__attribute__((used)) static void exynos4_mct_tick_stop(struct mct_clock_event_device *mevt)
{
 unsigned long tmp;
 unsigned long mask = MCT_L_TCON_INT_START | MCT_L_TCON_TIMER_START;
 unsigned long offset = mevt->base + MCT_L_TCON_OFFSET;

 tmp = readl_relaxed(reg_base + offset);
 if (tmp & mask) {
  tmp &= ~mask;
  exynos4_mct_write(tmp, offset);
 }
}
