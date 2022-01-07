
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct acpi_gpe_event_info {int runtime_count; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_UINT8_MAX ;
 int AE_LIMIT ;
 int AE_OK ;
 int acpi_ev_enable_gpe (struct acpi_gpe_event_info*) ;
 int acpi_ev_update_gpe_enable_mask (struct acpi_gpe_event_info*) ;
 int acpi_hw_clear_gpe (struct acpi_gpe_event_info*) ;
 int ev_add_gpe_reference ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_add_gpe_reference(struct acpi_gpe_event_info *gpe_event_info,
     u8 clear_on_enable)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(ev_add_gpe_reference);

 if (gpe_event_info->runtime_count == ACPI_UINT8_MAX) {
  return_ACPI_STATUS(AE_LIMIT);
 }

 gpe_event_info->runtime_count++;
 if (gpe_event_info->runtime_count == 1) {



  if (clear_on_enable) {
   (void)acpi_hw_clear_gpe(gpe_event_info);
  }

  status = acpi_ev_update_gpe_enable_mask(gpe_event_info);
  if (ACPI_SUCCESS(status)) {
   status = acpi_ev_enable_gpe(gpe_event_info);
  }

  if (ACPI_FAILURE(status)) {
   gpe_event_info->runtime_count--;
  }
 }

 return_ACPI_STATUS(status);
}
