
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_pm_init_common (struct device*) ;
 int device_pm_sleep_init (struct device*) ;
 int pm_runtime_init (struct device*) ;

__attribute__((used)) static inline void device_pm_init(struct device *dev)
{
 device_pm_init_common(dev);
 device_pm_sleep_init(dev);
 pm_runtime_init(dev);
}
