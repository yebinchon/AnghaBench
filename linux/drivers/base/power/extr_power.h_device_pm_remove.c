
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pm_runtime_remove (struct device*) ;

__attribute__((used)) static inline void device_pm_remove(struct device *dev)
{
 pm_runtime_remove(dev);
}
