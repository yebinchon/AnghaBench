
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subsys_interface {int dummy; } ;
struct kobject {int dummy; } ;
struct device {unsigned int id; int kobj; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KOBJ_ADD ;
 int kobject_init_and_add (struct kobject*,int *,int *,char*,char*) ;
 int kobject_uevent (struct kobject*,int ) ;
 int ktype_percpu_entry ;
 struct kobject* kzalloc (int,int ) ;
 struct kobject** sq_kobject ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sq_dev_add(struct device *dev, struct subsys_interface *sif)
{
 unsigned int cpu = dev->id;
 struct kobject *kobj;
 int error;

 sq_kobject[cpu] = kzalloc(sizeof(struct kobject), GFP_KERNEL);
 if (unlikely(!sq_kobject[cpu]))
  return -ENOMEM;

 kobj = sq_kobject[cpu];
 error = kobject_init_and_add(kobj, &ktype_percpu_entry, &dev->kobj,
         "%s", "sq");
 if (!error)
  kobject_uevent(kobj, KOBJ_ADD);
 return error;
}
