
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_gpe_register_info {int enable_address; int enable_mask; } ;
typedef int acpi_status ;


 int acpi_hw_write (int ,int *) ;

__attribute__((used)) static acpi_status
acpi_hw_gpe_enable_write(u8 enable_mask,
    struct acpi_gpe_register_info *gpe_register_info)
{
 acpi_status status;

 gpe_register_info->enable_mask = enable_mask;

 status = acpi_hw_write(enable_mask, &gpe_register_info->enable_address);
 return (status);
}
