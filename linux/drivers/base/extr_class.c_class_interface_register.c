
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct class_interface {int (* add_dev ) (struct device*,struct class_interface*) ;int node; int class; } ;
struct class_dev_iter {int dummy; } ;
struct class {TYPE_1__* p; } ;
struct TYPE_2__ {int mutex; int interfaces; } ;


 int EINVAL ;
 int ENODEV ;
 int class_dev_iter_exit (struct class_dev_iter*) ;
 int class_dev_iter_init (struct class_dev_iter*,struct class*,int *,int *) ;
 struct device* class_dev_iter_next (struct class_dev_iter*) ;
 struct class* class_get (int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct device*,struct class_interface*) ;

int class_interface_register(struct class_interface *class_intf)
{
 struct class *parent;
 struct class_dev_iter iter;
 struct device *dev;

 if (!class_intf || !class_intf->class)
  return -ENODEV;

 parent = class_get(class_intf->class);
 if (!parent)
  return -EINVAL;

 mutex_lock(&parent->p->mutex);
 list_add_tail(&class_intf->node, &parent->p->interfaces);
 if (class_intf->add_dev) {
  class_dev_iter_init(&iter, parent, ((void*)0), ((void*)0));
  while ((dev = class_dev_iter_next(&iter)))
   class_intf->add_dev(dev, class_intf);
  class_dev_iter_exit(&iter);
 }
 mutex_unlock(&parent->p->mutex);

 return 0;
}
