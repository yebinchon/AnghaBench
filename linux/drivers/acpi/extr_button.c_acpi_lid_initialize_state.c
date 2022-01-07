
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;





 int acpi_lid_notify_state (struct acpi_device*,int) ;
 int acpi_lid_update_state (struct acpi_device*,int) ;
 int lid_init_state ;

__attribute__((used)) static void acpi_lid_initialize_state(struct acpi_device *device)
{
 switch (lid_init_state) {
 case 128:
  (void)acpi_lid_notify_state(device, 1);
  break;
 case 129:
  (void)acpi_lid_update_state(device, 0);
  break;
 case 130:
 default:
  break;
 }
}
