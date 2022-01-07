
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int CS5536_PM_RTC ;
 int olpc_xo1_pm_wakeup_set (int ) ;

__attribute__((used)) static void rtc_wake_on(struct device *dev)
{
 olpc_xo1_pm_wakeup_set(CS5536_PM_RTC);
}
