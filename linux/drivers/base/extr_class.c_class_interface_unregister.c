
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct class_interface {int (* remove_dev ) (struct device*,struct class_interface*) ;int node; struct class* class; } ;
struct class_dev_iter {int dummy; } ;
struct class {TYPE_1__* p; } ;
struct TYPE_2__ {int mutex; } ;


 int class_dev_iter_exit (struct class_dev_iter*) ;
 int class_dev_iter_init (struct class_dev_iter*,struct class*,int *,int *) ;
 struct device* class_dev_iter_next (struct class_dev_iter*) ;
 int class_put (struct class*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct device*,struct class_interface*) ;

void class_interface_unregister(struct class_interface *class_intf)
{
 struct class *parent = class_intf->class;
 struct class_dev_iter iter;
 struct device *dev;

 if (!parent)
  return;

 mutex_lock(&parent->p->mutex);
 list_del_init(&class_intf->node);
 if (class_intf->remove_dev) {
  class_dev_iter_init(&iter, parent, ((void*)0), ((void*)0));
  while ((dev = class_dev_iter_next(&iter)))
   class_intf->remove_dev(dev, class_intf);
  class_dev_iter_exit(&iter);
 }
 mutex_unlock(&parent->p->mutex);

 class_put(parent);
}
