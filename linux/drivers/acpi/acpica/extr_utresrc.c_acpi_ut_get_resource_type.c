
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_GET8 (void*) ;
 int ACPI_RESOURCE_NAME_LARGE ;
 int ACPI_RESOURCE_NAME_SMALL_MASK ;

u8 acpi_ut_get_resource_type(void *aml)
{
 ACPI_FUNCTION_ENTRY();





 if (ACPI_GET8(aml) & ACPI_RESOURCE_NAME_LARGE) {



  return (ACPI_GET8(aml));
 } else {


  return ((u8) (ACPI_GET8(aml) & ACPI_RESOURCE_NAME_SMALL_MASK));
 }
}
