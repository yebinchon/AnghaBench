
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* string; } ;
struct acpi_device_info {int valid; TYPE_1__ hardware_id; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_VALID_HID ;
 int acpi_get_object_info (int ,struct acpi_device_info**) ;
 int acpi_has_method (int ,char*) ;
 int kfree (struct acpi_device_info*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bool acpi_is_ioapic(acpi_handle handle, char **type)
{
 acpi_status status;
 struct acpi_device_info *info;
 char *hid = ((void*)0);
 bool match = 0;

 if (!acpi_has_method(handle, "_GSB"))
  return 0;

 status = acpi_get_object_info(handle, &info);
 if (ACPI_SUCCESS(status)) {
  if (info->valid & ACPI_VALID_HID)
   hid = info->hardware_id.string;
  if (hid) {
   if (strcmp(hid, "ACPI0009") == 0) {
    *type = "IOxAPIC";
    match = 1;
   } else if (strcmp(hid, "ACPI000A") == 0) {
    *type = "IOAPIC";
    match = 1;
   }
  }
  kfree(info);
 }

 return match;
}
