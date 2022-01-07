
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 int AE_OK ;

__attribute__((used)) static acpi_status intel_xpower_pmic_gpio_handler(u32 function,
  acpi_physical_address address, u32 bit_width, u64 *value,
  void *handler_context, void *region_context)
{
 return AE_OK;
}
