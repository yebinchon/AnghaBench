
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct device {TYPE_1__* class; } ;
struct TYPE_2__ {void* (* namespace ) (struct device*) ;scalar_t__ ns_type; } ;


 struct device* kobj_to_dev (struct kobject*) ;
 void* stub1 (struct device*) ;

__attribute__((used)) static const void *device_namespace(struct kobject *kobj)
{
 struct device *dev = kobj_to_dev(kobj);
 const void *ns = ((void*)0);

 if (dev->class && dev->class->ns_type)
  ns = dev->class->namespace(dev);

 return ns;
}
