
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int async_cookie_t ;


 int __device_suspend_late (struct device*,int ,int) ;
 int dev_name (struct device*) ;
 int dpm_save_failed_dev (int ) ;
 int pm_dev_err (struct device*,int ,char*,int) ;
 int pm_transition ;
 int put_device (struct device*) ;

__attribute__((used)) static void async_suspend_late(void *data, async_cookie_t cookie)
{
 struct device *dev = (struct device *)data;
 int error;

 error = __device_suspend_late(dev, pm_transition, 1);
 if (error) {
  dpm_save_failed_dev(dev_name(dev));
  pm_dev_err(dev, pm_transition, " async", error);
 }
 put_device(dev);
}
