
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* p; } ;
struct TYPE_2__ {int deferred_probe; } ;


 int deferred_probe_mutex ;
 int deferred_probe_pending_list ;
 int dev_dbg (struct device*,char*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void driver_deferred_probe_add(struct device *dev)
{
 mutex_lock(&deferred_probe_mutex);
 if (list_empty(&dev->p->deferred_probe)) {
  dev_dbg(dev, "Added to deferred list\n");
  list_add_tail(&dev->p->deferred_probe, &deferred_probe_pending_list);
 }
 mutex_unlock(&deferred_probe_mutex);
}
