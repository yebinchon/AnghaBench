
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_get_handle (int *,char*,scalar_t__*) ;

__attribute__((used)) static bool acpi_object_is_system_bus(acpi_handle handle)
{
 acpi_handle tmp;

 if (ACPI_SUCCESS(acpi_get_handle(((void*)0), "\\_SB", &tmp)) &&
     tmp == handle)
  return 1;
 if (ACPI_SUCCESS(acpi_get_handle(((void*)0), "\\_TZ", &tmp)) &&
     tmp == handle)
  return 1;

 return 0;
}
