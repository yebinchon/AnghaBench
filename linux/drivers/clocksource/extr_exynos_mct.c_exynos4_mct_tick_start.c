
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mct_clock_event_device {scalar_t__ base; } ;


 scalar_t__ MCT_L_ICNTB_OFFSET ;
 scalar_t__ MCT_L_INT_ENB_OFFSET ;
 unsigned long MCT_L_TCON_INTERVAL_MODE ;
 unsigned long MCT_L_TCON_INT_START ;
 scalar_t__ MCT_L_TCON_OFFSET ;
 unsigned long MCT_L_TCON_TIMER_START ;
 int exynos4_mct_tick_stop (struct mct_clock_event_device*) ;
 int exynos4_mct_write (unsigned long,scalar_t__) ;
 unsigned long readl_relaxed (scalar_t__) ;
 scalar_t__ reg_base ;

__attribute__((used)) static void exynos4_mct_tick_start(unsigned long cycles,
       struct mct_clock_event_device *mevt)
{
 unsigned long tmp;

 exynos4_mct_tick_stop(mevt);

 tmp = (1 << 31) | cycles;


 exynos4_mct_write(tmp, mevt->base + MCT_L_ICNTB_OFFSET);


 exynos4_mct_write(0x1, mevt->base + MCT_L_INT_ENB_OFFSET);

 tmp = readl_relaxed(reg_base + mevt->base + MCT_L_TCON_OFFSET);
 tmp |= MCT_L_TCON_INT_START | MCT_L_TCON_TIMER_START |
        MCT_L_TCON_INTERVAL_MODE;
 exynos4_mct_write(tmp, mevt->base + MCT_L_TCON_OFFSET);
}
