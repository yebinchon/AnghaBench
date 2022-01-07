
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int __device_suspend (struct device*,int ,int) ;
 int async_suspend ;
 scalar_t__ dpm_async_fn (struct device*,int ) ;
 int pm_transition ;

__attribute__((used)) static int device_suspend(struct device *dev)
{
 if (dpm_async_fn(dev, async_suspend))
  return 0;

 return __device_suspend(dev, pm_transition, 0);
}
