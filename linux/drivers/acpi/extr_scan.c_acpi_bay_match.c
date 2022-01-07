
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_ata_match (int ) ;
 int acpi_get_parent (int ,int *) ;
 int acpi_has_method (int ,char*) ;

bool acpi_bay_match(acpi_handle handle)
{
 acpi_handle phandle;

 if (!acpi_has_method(handle, "_EJ0"))
  return 0;
 if (acpi_ata_match(handle))
  return 1;
 if (ACPI_FAILURE(acpi_get_parent(handle, &phandle)))
  return 0;

 return acpi_ata_match(phandle);
}
