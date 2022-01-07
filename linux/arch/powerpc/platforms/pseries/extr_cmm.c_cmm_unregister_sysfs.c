
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int bus_unregister (int *) ;
 int * cmm_attrs ;
 int cmm_subsys ;
 int device_remove_file (struct device*,int ) ;
 int device_unregister (struct device*) ;

__attribute__((used)) static void cmm_unregister_sysfs(struct device *dev)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(cmm_attrs); i++)
  device_remove_file(dev, cmm_attrs[i]);
 device_unregister(dev);
 bus_unregister(&cmm_subsys);
}
