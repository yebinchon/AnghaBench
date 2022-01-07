
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct aml_resource_small_header {int dummy; } ;
struct aml_resource_large_header {int dummy; } ;


 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_GET8 (void*) ;
 int ACPI_RESOURCE_NAME_LARGE ;

u8 acpi_ut_get_resource_header_length(void *aml)
{
 ACPI_FUNCTION_ENTRY();



 if (ACPI_GET8(aml) & ACPI_RESOURCE_NAME_LARGE) {
  return (sizeof(struct aml_resource_large_header));
 } else {
  return (sizeof(struct aml_resource_small_header));
 }
}
