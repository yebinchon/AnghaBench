
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_wakeup_disable (struct device*) ;
 int device_wakeup_enable (struct device*) ;

int device_set_wakeup_enable(struct device *dev, bool enable)
{
 return enable ? device_wakeup_enable(dev) : device_wakeup_disable(dev);
}
