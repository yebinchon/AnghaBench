
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_is_registered (struct device*) ;

__attribute__((used)) static inline bool device_pm_initialized(struct device *dev)
{
 return device_is_registered(dev);
}
