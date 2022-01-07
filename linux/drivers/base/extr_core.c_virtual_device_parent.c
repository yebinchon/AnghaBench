
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int kobj; } ;


 TYPE_1__* devices_kset ;
 struct kobject* kobject_create_and_add (char*,int *) ;

struct kobject *virtual_device_parent(struct device *dev)
{
 static struct kobject *virtual_dir = ((void*)0);

 if (!virtual_dir)
  virtual_dir = kobject_create_and_add("virtual",
           &devices_kset->kobj);

 return virtual_dir;
}
