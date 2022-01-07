
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_release_driver_internal (struct device*,int *,int *) ;

void device_release_driver(struct device *dev)
{





 device_release_driver_internal(dev, ((void*)0), ((void*)0));
}
