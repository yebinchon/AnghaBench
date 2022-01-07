
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct acpi_processor {int performance_platform_limit; } ;
struct TYPE_2__ {int device_class; } ;
struct acpi_device {scalar_t__ handle; int dev; TYPE_1__ pnp; } ;
typedef scalar_t__ acpi_handle ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;



 int acpi_bus_generate_netlink_event (int ,int ,int,int) ;
 struct acpi_processor* acpi_driver_data (struct acpi_device*) ;
 int acpi_processor_power_state_has_changed (struct acpi_processor*) ;
 int acpi_processor_ppc_has_changed (struct acpi_processor*,int) ;
 int acpi_processor_tstate_has_changed (struct acpi_processor*) ;
 int dev_name (int *) ;

__attribute__((used)) static void acpi_processor_notify(acpi_handle handle, u32 event, void *data)
{
 struct acpi_device *device = data;
 struct acpi_processor *pr;
 int saved;

 if (device->handle != handle)
  return;

 pr = acpi_driver_data(device);
 if (!pr)
  return;

 switch (event) {
 case 130:
  saved = pr->performance_platform_limit;
  acpi_processor_ppc_has_changed(pr, 1);
  if (saved == pr->performance_platform_limit)
   break;
  acpi_bus_generate_netlink_event(device->pnp.device_class,
        dev_name(&device->dev), event,
        pr->performance_platform_limit);
  break;
 case 129:
  acpi_processor_power_state_has_changed(pr);
  acpi_bus_generate_netlink_event(device->pnp.device_class,
        dev_name(&device->dev), event, 0);
  break;
 case 128:
  acpi_processor_tstate_has_changed(pr);
  acpi_bus_generate_netlink_event(device->pnp.device_class,
        dev_name(&device->dev), event, 0);
  break;
 default:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Unsupported event [0x%x]\n", event));
  break;
 }

 return;
}
