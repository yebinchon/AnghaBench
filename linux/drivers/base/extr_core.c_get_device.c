
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 struct device* kobj_to_dev (int ) ;
 int kobject_get (int *) ;

struct device *get_device(struct device *dev)
{
 return dev ? kobj_to_dev(kobject_get(&dev->kobj)) : ((void*)0);
}
