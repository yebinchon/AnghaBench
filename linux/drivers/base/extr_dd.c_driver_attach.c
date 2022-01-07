
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int bus; } ;


 int __driver_attach ;
 int bus_for_each_dev (int ,int *,struct device_driver*,int ) ;

int driver_attach(struct device_driver *drv)
{
 return bus_for_each_dev(drv->bus, ((void*)0), drv, __driver_attach);
}
