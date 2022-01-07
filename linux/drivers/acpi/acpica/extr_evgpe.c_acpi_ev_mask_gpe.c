
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct acpi_gpe_register_info {int mask_for_run; } ;
struct acpi_gpe_event_info {int disable_for_dispatch; scalar_t__ runtime_count; struct acpi_gpe_register_info* register_info; } ;
typedef int acpi_status ;


 int ACPI_CLEAR_BIT (int,scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_DISABLE ;
 int ACPI_GPE_ENABLE ;
 int ACPI_SET_BIT (int,scalar_t__) ;
 int AE_BAD_PARAMETER ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 int acpi_hw_get_gpe_register_bit (struct acpi_gpe_event_info*) ;
 int acpi_hw_low_set_gpe (struct acpi_gpe_event_info*,int ) ;
 int ev_mask_gpe ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_mask_gpe(struct acpi_gpe_event_info *gpe_event_info, u8 is_masked)
{
 struct acpi_gpe_register_info *gpe_register_info;
 u32 register_bit;

 ACPI_FUNCTION_TRACE(ev_mask_gpe);

 gpe_register_info = gpe_event_info->register_info;
 if (!gpe_register_info) {
  return_ACPI_STATUS(AE_NOT_EXIST);
 }

 register_bit = acpi_hw_get_gpe_register_bit(gpe_event_info);



 if (is_masked) {
  if (register_bit & gpe_register_info->mask_for_run) {
   return_ACPI_STATUS(AE_BAD_PARAMETER);
  }

  (void)acpi_hw_low_set_gpe(gpe_event_info, ACPI_GPE_DISABLE);
  ACPI_SET_BIT(gpe_register_info->mask_for_run, (u8)register_bit);
 } else {
  if (!(register_bit & gpe_register_info->mask_for_run)) {
   return_ACPI_STATUS(AE_BAD_PARAMETER);
  }

  ACPI_CLEAR_BIT(gpe_register_info->mask_for_run,
          (u8)register_bit);
  if (gpe_event_info->runtime_count
      && !gpe_event_info->disable_for_dispatch) {
   (void)acpi_hw_low_set_gpe(gpe_event_info,
        ACPI_GPE_ENABLE);
  }
 }

 return_ACPI_STATUS(AE_OK);
}
