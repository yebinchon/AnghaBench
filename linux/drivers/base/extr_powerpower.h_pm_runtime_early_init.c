
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_pm_init_common (struct device*) ;

__attribute__((used)) static inline void pm_runtime_early_init(struct device *dev)
{
 device_pm_init_common(dev);
}
