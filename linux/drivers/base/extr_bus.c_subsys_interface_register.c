
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subsys_interface {int (* add_dev ) (struct device*,struct subsys_interface*) ;int node; int subsys; } ;
struct subsys_dev_iter {int dummy; } ;
struct device {int dummy; } ;
struct bus_type {TYPE_1__* p; } ;
struct TYPE_2__ {int mutex; int interfaces; } ;


 int EINVAL ;
 int ENODEV ;
 struct bus_type* bus_get (int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct device*,struct subsys_interface*) ;
 int subsys_dev_iter_exit (struct subsys_dev_iter*) ;
 int subsys_dev_iter_init (struct subsys_dev_iter*,struct bus_type*,int *,int *) ;
 struct device* subsys_dev_iter_next (struct subsys_dev_iter*) ;

int subsys_interface_register(struct subsys_interface *sif)
{
 struct bus_type *subsys;
 struct subsys_dev_iter iter;
 struct device *dev;

 if (!sif || !sif->subsys)
  return -ENODEV;

 subsys = bus_get(sif->subsys);
 if (!subsys)
  return -EINVAL;

 mutex_lock(&subsys->p->mutex);
 list_add_tail(&sif->node, &subsys->p->interfaces);
 if (sif->add_dev) {
  subsys_dev_iter_init(&iter, subsys, ((void*)0), ((void*)0));
  while ((dev = subsys_dev_iter_next(&iter)))
   sif->add_dev(dev, sif);
  subsys_dev_iter_exit(&iter);
 }
 mutex_unlock(&subsys->p->mutex);

 return 0;
}
