
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct device {TYPE_1__* bus; scalar_t__ id; } ;
struct TYPE_4__ {int dev_root; } ;


 int bus_unregister (TYPE_1__*) ;
 int dev_attr_hibernate ;
 int device_create_file (int ,int *) ;
 int subsys_system_register (TYPE_1__*,int *) ;
 TYPE_1__ suspend_subsys ;

__attribute__((used)) static int pseries_suspend_sysfs_register(struct device *dev)
{
 int rc;

 if ((rc = subsys_system_register(&suspend_subsys, ((void*)0))))
  return rc;

 dev->id = 0;
 dev->bus = &suspend_subsys;

 if ((rc = device_create_file(suspend_subsys.dev_root, &dev_attr_hibernate)))
  goto subsys_unregister;

 return 0;

subsys_unregister:
 bus_unregister(&suspend_subsys);
 return rc;
}
