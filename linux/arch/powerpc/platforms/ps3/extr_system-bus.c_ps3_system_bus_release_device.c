
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3_system_bus_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct ps3_system_bus_device*) ;
 struct ps3_system_bus_device* ps3_dev_to_system_bus_dev (struct device*) ;

__attribute__((used)) static void ps3_system_bus_release_device(struct device *_dev)
{
 struct ps3_system_bus_device *dev = ps3_dev_to_system_bus_dev(_dev);
 kfree(dev);
}
