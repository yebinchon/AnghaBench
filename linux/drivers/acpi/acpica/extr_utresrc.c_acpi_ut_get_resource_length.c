
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef scalar_t__ acpi_rs_length ;


 int ACPI_ADD_PTR (int ,void*,int) ;
 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_GET8 (void*) ;
 int ACPI_MOVE_16_TO_16 (scalar_t__*,int ) ;
 int ACPI_RESOURCE_NAME_LARGE ;
 int ACPI_RESOURCE_NAME_SMALL_LENGTH_MASK ;
 int u8 ;

u16 acpi_ut_get_resource_length(void *aml)
{
 acpi_rs_length resource_length;

 ACPI_FUNCTION_ENTRY();





 if (ACPI_GET8(aml) & ACPI_RESOURCE_NAME_LARGE) {



  ACPI_MOVE_16_TO_16(&resource_length, ACPI_ADD_PTR(u8, aml, 1));

 } else {


  resource_length = (u16) (ACPI_GET8(aml) &
      ACPI_RESOURCE_NAME_SMALL_LENGTH_MASK);
 }

 return (resource_length);
}
