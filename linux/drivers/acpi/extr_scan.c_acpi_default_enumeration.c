
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enumeration_by_parent; } ;
struct acpi_device {TYPE_1__ flags; } ;


 int ACPI_RECONFIG_DEVICE_ADD ;
 int acpi_create_platform_device (struct acpi_device*,int *) ;
 int acpi_device_set_enumerated (struct acpi_device*) ;
 int acpi_reconfig_chain ;
 int blocking_notifier_call_chain (int *,int ,struct acpi_device*) ;

__attribute__((used)) static void acpi_default_enumeration(struct acpi_device *device)
{




 if (!device->flags.enumeration_by_parent) {
  acpi_create_platform_device(device, ((void*)0));
  acpi_device_set_enumerated(device);
 } else {
  blocking_notifier_call_chain(&acpi_reconfig_chain,
          ACPI_RECONFIG_DEVICE_ADD, device);
 }
}
