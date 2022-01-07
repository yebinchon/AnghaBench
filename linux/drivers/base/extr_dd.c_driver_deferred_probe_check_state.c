
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENODEV ;
 int __driver_deferred_probe_check_state (struct device*) ;
 int dev_warn (struct device*,char*) ;

int driver_deferred_probe_check_state(struct device *dev)
{
 int ret;

 ret = __driver_deferred_probe_check_state(dev);
 if (ret < 0)
  return ret;

 dev_warn(dev, "ignoring dependency for device, assuming no driver");

 return -ENODEV;
}
