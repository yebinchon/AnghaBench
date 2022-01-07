
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int DPM_FLAG_SMART_SUSPEND ;
 scalar_t__ dev_pm_test_driver_flags (struct device*,int ) ;
 scalar_t__ pm_runtime_status_suspended (struct device*) ;

bool dev_pm_smart_suspend_and_suspended(struct device *dev)
{
 return dev_pm_test_driver_flags(dev, DPM_FLAG_SMART_SUSPEND) &&
  pm_runtime_status_suspended(dev);
}
