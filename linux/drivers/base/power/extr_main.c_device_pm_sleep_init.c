
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_prepared; int is_suspended; int is_noirq_suspended; int is_late_suspended; int entry; int * wakeup; int completion; } ;
struct device {TYPE_1__ power; } ;


 int INIT_LIST_HEAD (int *) ;
 int complete_all (int *) ;
 int init_completion (int *) ;

void device_pm_sleep_init(struct device *dev)
{
 dev->power.is_prepared = 0;
 dev->power.is_suspended = 0;
 dev->power.is_noirq_suspended = 0;
 dev->power.is_late_suspended = 0;
 init_completion(&dev->power.completion);
 complete_all(&dev->power.completion);
 dev->power.wakeup = ((void*)0);
 INIT_LIST_HEAD(&dev->power.entry);
}
