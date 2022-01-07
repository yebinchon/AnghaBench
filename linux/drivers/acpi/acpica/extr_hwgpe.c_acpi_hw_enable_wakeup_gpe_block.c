
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct acpi_gpe_xrupt_info {int dummy; } ;
struct acpi_gpe_register_info {int enable_for_wake; } ;
struct acpi_gpe_block_info {size_t register_count; struct acpi_gpe_register_info* register_info; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int acpi_hw_gpe_enable_write (int ,struct acpi_gpe_register_info*) ;

__attribute__((used)) static acpi_status
acpi_hw_enable_wakeup_gpe_block(struct acpi_gpe_xrupt_info *gpe_xrupt_info,
    struct acpi_gpe_block_info *gpe_block,
    void *context)
{
 u32 i;
 acpi_status status;
 struct acpi_gpe_register_info *gpe_register_info;



 for (i = 0; i < gpe_block->register_count; i++) {
  gpe_register_info = &gpe_block->register_info[i];






  status =
      acpi_hw_gpe_enable_write(gpe_register_info->enable_for_wake,
          gpe_register_info);
  if (ACPI_FAILURE(status)) {
   return (status);
  }
 }

 return (AE_OK);
}
