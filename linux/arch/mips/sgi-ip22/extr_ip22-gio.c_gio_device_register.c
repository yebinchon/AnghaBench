
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; int * bus; } ;
struct gio_device {TYPE_1__ dev; } ;


 int device_register (TYPE_1__*) ;
 int gio_bus ;
 int gio_bus_type ;

int gio_device_register(struct gio_device *giodev)
{
 giodev->dev.bus = &gio_bus_type;
 giodev->dev.parent = &gio_bus;
 return device_register(&giodev->dev);
}
