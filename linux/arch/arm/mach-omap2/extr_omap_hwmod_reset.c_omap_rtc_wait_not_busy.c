
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hwmod {int dummy; } ;


 int OMAP_RTC_MAX_READY_TIME ;
 int OMAP_RTC_STATUS_BUSY ;
 int OMAP_RTC_STATUS_REG ;
 int omap_hwmod_read (struct omap_hwmod*,int ) ;
 int omap_test_timeout (int,int ,int) ;

__attribute__((used)) static void omap_rtc_wait_not_busy(struct omap_hwmod *oh)
{
 int i;


 omap_test_timeout(omap_hwmod_read(oh, OMAP_RTC_STATUS_REG)
     & OMAP_RTC_STATUS_BUSY, OMAP_RTC_MAX_READY_TIME, i);

}
