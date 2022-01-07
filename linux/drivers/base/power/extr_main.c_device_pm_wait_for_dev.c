
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int async_suspend; } ;
struct device {TYPE_1__ power; } ;


 int async_error ;
 int dpm_wait (struct device*,int ) ;

int device_pm_wait_for_dev(struct device *subordinate, struct device *dev)
{
 dpm_wait(dev, subordinate->power.async_suspend);
 return async_error;
}
