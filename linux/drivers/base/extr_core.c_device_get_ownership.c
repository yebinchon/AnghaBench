
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct device {TYPE_1__* class; } ;
typedef int kuid_t ;
typedef int kgid_t ;
struct TYPE_2__ {int (* get_ownership ) (struct device*,int *,int *) ;} ;


 struct device* kobj_to_dev (struct kobject*) ;
 int stub1 (struct device*,int *,int *) ;

__attribute__((used)) static void device_get_ownership(struct kobject *kobj, kuid_t *uid, kgid_t *gid)
{
 struct device *dev = kobj_to_dev(kobj);

 if (dev->class && dev->class->get_ownership)
  dev->class->get_ownership(dev, uid, gid);
}
