
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kset {int dummy; } ;
struct kobject {int dummy; } ;
struct kobj_type {int dummy; } ;
struct device {scalar_t__ class; scalar_t__ bus; } ;


 struct kobj_type device_ktype ;
 struct kobj_type* get_ktype (struct kobject*) ;
 struct device* kobj_to_dev (struct kobject*) ;

__attribute__((used)) static int dev_uevent_filter(struct kset *kset, struct kobject *kobj)
{
 struct kobj_type *ktype = get_ktype(kobj);

 if (ktype == &device_ktype) {
  struct device *dev = kobj_to_dev(kobj);
  if (dev->bus)
   return 1;
  if (dev->class)
   return 1;
 }
 return 0;
}
