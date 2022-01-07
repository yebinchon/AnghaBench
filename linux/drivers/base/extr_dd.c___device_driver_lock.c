
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ need_parent_lock; } ;


 int device_lock (struct device*) ;

__attribute__((used)) static void __device_driver_lock(struct device *dev, struct device *parent)
{
 if (parent && dev->bus->need_parent_lock)
  device_lock(parent);
 device_lock(dev);
}
