
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wakeup_path; int lock; int ignore_children; } ;
struct device {TYPE_1__ power; struct device* parent; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void dpm_propagate_wakeup_to_parent(struct device *dev)
{
 struct device *parent = dev->parent;

 if (!parent)
  return;

 spin_lock_irq(&parent->power.lock);

 if (dev->power.wakeup_path && !parent->power.ignore_children)
  parent->power.wakeup_path = 1;

 spin_unlock_irq(&parent->power.lock);
}
