
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct acpi_gpe_register_info {int enable_for_run; int enable_mask; } ;
struct acpi_gpe_event_info {scalar_t__ runtime_count; struct acpi_gpe_register_info* register_info; } ;
typedef int acpi_status ;


 int ACPI_CLEAR_BIT (int ,scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_SET_BIT (int ,int ) ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 scalar_t__ acpi_hw_get_gpe_register_bit (struct acpi_gpe_event_info*) ;
 int ev_update_gpe_enable_mask ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_update_gpe_enable_mask(struct acpi_gpe_event_info *gpe_event_info)
{
 struct acpi_gpe_register_info *gpe_register_info;
 u32 register_bit;

 ACPI_FUNCTION_TRACE(ev_update_gpe_enable_mask);

 gpe_register_info = gpe_event_info->register_info;
 if (!gpe_register_info) {
  return_ACPI_STATUS(AE_NOT_EXIST);
 }

 register_bit = acpi_hw_get_gpe_register_bit(gpe_event_info);



 ACPI_CLEAR_BIT(gpe_register_info->enable_for_run, register_bit);



 if (gpe_event_info->runtime_count) {
  ACPI_SET_BIT(gpe_register_info->enable_for_run,
        (u8)register_bit);
 }

 gpe_register_info->enable_mask = gpe_register_info->enable_for_run;
 return_ACPI_STATUS(AE_OK);
}
