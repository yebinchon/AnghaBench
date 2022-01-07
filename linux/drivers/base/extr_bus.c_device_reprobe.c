
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ driver; } ;


 int bus_rescan_devices_helper (struct device*,int *) ;
 int device_driver_detach (struct device*) ;

int device_reprobe(struct device *dev)
{
 if (dev->driver)
  device_driver_detach(dev);
 return bus_rescan_devices_helper(dev, ((void*)0));
}
