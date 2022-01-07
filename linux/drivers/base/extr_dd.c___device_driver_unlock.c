
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ need_parent_lock; } ;


 int device_unlock (struct device*) ;

__attribute__((used)) static void __device_driver_unlock(struct device *dev, struct device *parent)
{
 device_unlock(dev);
 if (parent && dev->bus->need_parent_lock)
  device_unlock(parent);
}
