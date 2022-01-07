
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* p; } ;
struct TYPE_2__ {int deferred_probe; } ;


 int deferred_probe_mutex ;
 int dev_dbg (struct device*,char*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void driver_deferred_probe_del(struct device *dev)
{
 mutex_lock(&deferred_probe_mutex);
 if (!list_empty(&dev->p->deferred_probe)) {
  dev_dbg(dev, "Removed from deferred list\n");
  list_del_init(&dev->p->deferred_probe);
 }
 mutex_unlock(&deferred_probe_mutex);
}
