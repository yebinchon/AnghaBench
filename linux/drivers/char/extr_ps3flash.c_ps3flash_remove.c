
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3_system_bus_device {int core; } ;
struct ps3_storage_device {int sbd; } ;


 int kfree (int ) ;
 int misc_deregister (int *) ;
 int ps3_os_area_flash_register (int *) ;
 int ps3_system_bus_get_drvdata (int *) ;
 int ps3_system_bus_set_drvdata (int *,int *) ;
 int * ps3flash_dev ;
 int ps3flash_misc ;
 int ps3stor_teardown (struct ps3_storage_device*) ;
 struct ps3_storage_device* to_ps3_storage_device (int *) ;

__attribute__((used)) static int ps3flash_remove(struct ps3_system_bus_device *_dev)
{
 struct ps3_storage_device *dev = to_ps3_storage_device(&_dev->core);

 ps3_os_area_flash_register(((void*)0));
 misc_deregister(&ps3flash_misc);
 ps3stor_teardown(dev);
 kfree(ps3_system_bus_get_drvdata(&dev->sbd));
 ps3_system_bus_set_drvdata(&dev->sbd, ((void*)0));
 ps3flash_dev = ((void*)0);
 return 0;
}
