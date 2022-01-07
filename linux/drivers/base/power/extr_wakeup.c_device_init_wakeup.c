
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EINVAL ;
 int device_set_wakeup_capable (struct device*,int) ;
 int device_wakeup_disable (struct device*) ;
 int device_wakeup_enable (struct device*) ;

int device_init_wakeup(struct device *dev, bool enable)
{
 int ret = 0;

 if (!dev)
  return -EINVAL;

 if (enable) {
  device_set_wakeup_capable(dev, 1);
  ret = device_wakeup_enable(dev);
 } else {
  device_wakeup_disable(dev);
  device_set_wakeup_capable(dev, 0);
 }

 return ret;
}
