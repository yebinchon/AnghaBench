
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* wakeup; } ;
struct device {TYPE_1__ power; } ;
struct TYPE_4__ {scalar_t__ dev; } ;


 int wakeup_source_sysfs_add (struct device*,TYPE_2__*) ;

int pm_wakeup_source_sysfs_add(struct device *parent)
{
 if (!parent->power.wakeup || parent->power.wakeup->dev)
  return 0;

 return wakeup_source_sysfs_add(parent, parent->power.wakeup);
}
