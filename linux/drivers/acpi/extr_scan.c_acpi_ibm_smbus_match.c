
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_buffer {int member_0; char* member_1; int pointer; } ;
typedef int node_name ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_PATH_SEGMENT_LENGTH ;
 int ACPI_SINGLE_NAME ;
 int acpi_get_name (int ,int ,struct acpi_buffer*) ;
 scalar_t__ acpi_has_method (int ,char*) ;
 int dmi_name_in_vendors (char*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static bool acpi_ibm_smbus_match(acpi_handle handle)
{
 char node_name[ACPI_PATH_SEGMENT_LENGTH];
 struct acpi_buffer path = { sizeof(node_name), node_name };

 if (!dmi_name_in_vendors("IBM"))
  return 0;


 if (ACPI_FAILURE(acpi_get_name(handle, ACPI_SINGLE_NAME, &path)) ||
     strcmp("SMBS", path.pointer))
  return 0;


 if (acpi_has_method(handle, "SBI") &&
     acpi_has_method(handle, "SBR") &&
     acpi_has_method(handle, "SBW"))
  return 1;

 return 0;
}
