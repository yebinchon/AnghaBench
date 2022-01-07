
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * bus; scalar_t__ id; } ;


 int ARRAY_SIZE (int *) ;
 int bus_unregister (int *) ;
 int * cmm_attrs ;
 int cmm_subsys ;
 int device_create_file (struct device*,int ) ;
 int device_register (struct device*) ;
 int device_remove_file (struct device*,int ) ;
 int device_unregister (struct device*) ;
 int subsys_system_register (int *,int *) ;

__attribute__((used)) static int cmm_sysfs_register(struct device *dev)
{
 int i, rc;

 if ((rc = subsys_system_register(&cmm_subsys, ((void*)0))))
  return rc;

 dev->id = 0;
 dev->bus = &cmm_subsys;

 if ((rc = device_register(dev)))
  goto subsys_unregister;

 for (i = 0; i < ARRAY_SIZE(cmm_attrs); i++) {
  if ((rc = device_create_file(dev, cmm_attrs[i])))
   goto fail;
 }

 return 0;

fail:
 while (--i >= 0)
  device_remove_file(dev, cmm_attrs[i]);
 device_unregister(dev);
subsys_unregister:
 bus_unregister(&cmm_subsys);
 return rc;
}
