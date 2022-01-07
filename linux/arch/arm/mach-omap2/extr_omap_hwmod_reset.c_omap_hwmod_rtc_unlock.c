
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hwmod {int dummy; } ;


 int OMAP_RTC_KICK0_REG ;
 int OMAP_RTC_KICK0_VALUE ;
 int OMAP_RTC_KICK1_REG ;
 int OMAP_RTC_KICK1_VALUE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int omap_hwmod_write (int ,struct omap_hwmod*,int ) ;
 int omap_rtc_wait_not_busy (struct omap_hwmod*) ;

void omap_hwmod_rtc_unlock(struct omap_hwmod *oh)
{
 unsigned long flags;

 local_irq_save(flags);
 omap_rtc_wait_not_busy(oh);
 omap_hwmod_write(OMAP_RTC_KICK0_VALUE, oh, OMAP_RTC_KICK0_REG);
 omap_hwmod_write(OMAP_RTC_KICK1_VALUE, oh, OMAP_RTC_KICK1_REG);
 local_irq_restore(flags);
}
