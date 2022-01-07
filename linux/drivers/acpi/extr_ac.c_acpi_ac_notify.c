
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int device_class; } ;
struct acpi_device {int dev; TYPE_3__ pnp; } ;
struct acpi_ac {TYPE_2__* charger; int state; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;



 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;


 int KOBJ_CHANGE ;
 int ac_sleep_before_get_state_ms ;
 int acpi_ac_get_state (struct acpi_ac*) ;
 int acpi_bus_generate_netlink_event (int ,int ,int,int) ;
 struct acpi_ac* acpi_driver_data (struct acpi_device*) ;
 int acpi_notifier_call_chain (struct acpi_device*,int,int) ;
 int dev_name (int *) ;
 int kobject_uevent (int *,int ) ;
 int msleep (int ) ;

__attribute__((used)) static void acpi_ac_notify(struct acpi_device *device, u32 event)
{
 struct acpi_ac *ac = acpi_driver_data(device);

 if (!ac)
  return;

 switch (event) {
 default:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Unsupported event [0x%x]\n", event));

 case 130:
 case 129:
 case 128:







  if (ac_sleep_before_get_state_ms > 0)
   msleep(ac_sleep_before_get_state_ms);

  acpi_ac_get_state(ac);
  acpi_bus_generate_netlink_event(device->pnp.device_class,
        dev_name(&device->dev), event,
        (u32) ac->state);
  acpi_notifier_call_chain(device, event, (u32) ac->state);
  kobject_uevent(&ac->charger->dev.kobj, KOBJ_CHANGE);
 }

 return;
}
