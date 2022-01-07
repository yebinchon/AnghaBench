
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subsys_interface {int (* remove_dev ) (struct device*,struct subsys_interface*) ;int node; struct bus_type* subsys; } ;
struct subsys_dev_iter {int dummy; } ;
struct device {int dummy; } ;
struct bus_type {TYPE_1__* p; } ;
struct TYPE_2__ {int mutex; } ;


 int bus_put (struct bus_type*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct device*,struct subsys_interface*) ;
 int subsys_dev_iter_exit (struct subsys_dev_iter*) ;
 int subsys_dev_iter_init (struct subsys_dev_iter*,struct bus_type*,int *,int *) ;
 struct device* subsys_dev_iter_next (struct subsys_dev_iter*) ;

void subsys_interface_unregister(struct subsys_interface *sif)
{
 struct bus_type *subsys;
 struct subsys_dev_iter iter;
 struct device *dev;

 if (!sif || !sif->subsys)
  return;

 subsys = sif->subsys;

 mutex_lock(&subsys->p->mutex);
 list_del_init(&sif->node);
 if (sif->remove_dev) {
  subsys_dev_iter_init(&iter, subsys, ((void*)0), ((void*)0));
  while ((dev = subsys_dev_iter_next(&iter)))
   sif->remove_dev(dev, sif);
  subsys_dev_iter_exit(&iter);
 }
 mutex_unlock(&subsys->p->mutex);

 bus_put(subsys);
}
