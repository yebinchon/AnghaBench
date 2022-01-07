
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ notifier_present; } ;
struct acpi_device_wakeup {scalar_t__ sleep_state; int gpe_number; int gpe_device; TYPE_1__ flags; } ;
struct acpi_device_id {char* member_0; int member_1; } ;
struct acpi_device {int handle; int dev; struct acpi_device_wakeup wakeup; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_STATE_S4 ;
 scalar_t__ ACPI_STATE_S5 ;
 int ACPI_SUCCESS (int ) ;
 int acpi_mark_gpe_for_wake (int ,int ) ;
 int acpi_match_device_ids (struct acpi_device*,struct acpi_device_id const*) ;
 int acpi_setup_gpe_for_wake (int ,int ,int ) ;
 int device_set_wakeup_capable (int *,int) ;

__attribute__((used)) static bool acpi_wakeup_gpe_init(struct acpi_device *device)
{
 static const struct acpi_device_id button_device_ids[] = {
  {"PNP0C0C", 0},
  {"PNP0C0D", 0},
  {"PNP0C0E", 0},
  {"", 0},
 };
 struct acpi_device_wakeup *wakeup = &device->wakeup;
 acpi_status status;

 wakeup->flags.notifier_present = 0;


 if (!acpi_match_device_ids(device, button_device_ids)) {
  if (!acpi_match_device_ids(device, &button_device_ids[1])) {

   if (wakeup->sleep_state == ACPI_STATE_S5)
    wakeup->sleep_state = ACPI_STATE_S4;
  }
  acpi_mark_gpe_for_wake(wakeup->gpe_device, wakeup->gpe_number);
  device_set_wakeup_capable(&device->dev, 1);
  return 1;
 }

 status = acpi_setup_gpe_for_wake(device->handle, wakeup->gpe_device,
      wakeup->gpe_number);
 return ACPI_SUCCESS(status);
}
