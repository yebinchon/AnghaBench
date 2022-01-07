
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int device_class; } ;
struct acpi_device {int dev; TYPE_1__ pnp; } ;
typedef int acpi_handle ;



 int acpi_bus_generate_netlink_event (int ,int ,int,int ) ;
 int acpi_pad_handle_notify (int ) ;
 int dev_name (int *) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static void acpi_pad_notify(acpi_handle handle, u32 event,
 void *data)
{
 struct acpi_device *device = data;

 switch (event) {
 case 128:
  acpi_pad_handle_notify(handle);
  acpi_bus_generate_netlink_event(device->pnp.device_class,
   dev_name(&device->dev), event, 0);
  break;
 default:
  pr_warn("Unsupported event [0x%x]\n", event);
  break;
 }
}
