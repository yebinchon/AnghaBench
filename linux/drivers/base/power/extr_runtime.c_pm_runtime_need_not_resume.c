
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ignore_children; int child_count; int usage_count; } ;
struct device {TYPE_1__ power; } ;


 int atomic_read (int *) ;

__attribute__((used)) static bool pm_runtime_need_not_resume(struct device *dev)
{
 return atomic_read(&dev->power.usage_count) <= 1 &&
  (atomic_read(&dev->power.child_count) == 0 ||
   dev->power.ignore_children);
}
