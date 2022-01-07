
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_gpe_register_info {int status_address; } ;
struct acpi_gpe_event_info {struct acpi_gpe_register_info* register_info; } ;
typedef int acpi_status ;


 int ACPI_FUNCTION_ENTRY () ;
 int AE_NOT_EXIST ;
 int acpi_hw_get_gpe_register_bit (struct acpi_gpe_event_info*) ;
 int acpi_hw_write (int ,int *) ;

acpi_status acpi_hw_clear_gpe(struct acpi_gpe_event_info *gpe_event_info)
{
 struct acpi_gpe_register_info *gpe_register_info;
 acpi_status status;
 u32 register_bit;

 ACPI_FUNCTION_ENTRY();



 gpe_register_info = gpe_event_info->register_info;
 if (!gpe_register_info) {
  return (AE_NOT_EXIST);
 }





 register_bit = acpi_hw_get_gpe_register_bit(gpe_event_info);

 status =
     acpi_hw_write(register_bit, &gpe_register_info->status_address);
 return (status);
}
