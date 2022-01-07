
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int early_init; int * qos; int lock; } ;
struct device {TYPE_1__ power; } ;


 int spin_lock_init (int *) ;

__attribute__((used)) static inline void device_pm_init_common(struct device *dev)
{
 if (!dev->power.early_init) {
  spin_lock_init(&dev->power.lock);
  dev->power.qos = ((void*)0);
  dev->power.early_init = 1;
 }
}
