
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct acpi_gpe_register_info {int enable_for_run; int mask_for_run; int enable_for_wake; int status_address; int enable_address; } ;
struct acpi_gpe_event_info {struct acpi_gpe_register_info* register_info; int flags; } ;
typedef int acpi_status ;
typedef int acpi_event_status ;


 int ACPI_EVENT_FLAG_ENABLED ;
 int ACPI_EVENT_FLAG_ENABLE_SET ;
 int ACPI_EVENT_FLAG_HAS_HANDLER ;
 int ACPI_EVENT_FLAG_MASKED ;
 int ACPI_EVENT_FLAG_STATUS_SET ;
 int ACPI_EVENT_FLAG_WAKE_ENABLED ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_GPE_DISPATCH_NONE ;
 scalar_t__ ACPI_GPE_DISPATCH_TYPE (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int acpi_hw_get_gpe_register_bit (struct acpi_gpe_event_info*) ;
 int acpi_hw_read (int*,int *) ;

acpi_status
acpi_hw_get_gpe_status(struct acpi_gpe_event_info *gpe_event_info,
         acpi_event_status *event_status)
{
 u64 in_byte;
 u32 register_bit;
 struct acpi_gpe_register_info *gpe_register_info;
 acpi_event_status local_event_status = 0;
 acpi_status status;

 ACPI_FUNCTION_ENTRY();

 if (!event_status) {
  return (AE_BAD_PARAMETER);
 }



 if (ACPI_GPE_DISPATCH_TYPE(gpe_event_info->flags) !=
     ACPI_GPE_DISPATCH_NONE) {
  local_event_status |= ACPI_EVENT_FLAG_HAS_HANDLER;
 }



 gpe_register_info = gpe_event_info->register_info;



 register_bit = acpi_hw_get_gpe_register_bit(gpe_event_info);



 if (register_bit & gpe_register_info->enable_for_run) {
  local_event_status |= ACPI_EVENT_FLAG_ENABLED;
 }



 if (register_bit & gpe_register_info->mask_for_run) {
  local_event_status |= ACPI_EVENT_FLAG_MASKED;
 }



 if (register_bit & gpe_register_info->enable_for_wake) {
  local_event_status |= ACPI_EVENT_FLAG_WAKE_ENABLED;
 }



 status = acpi_hw_read(&in_byte, &gpe_register_info->enable_address);
 if (ACPI_FAILURE(status)) {
  return (status);
 }

 if (register_bit & in_byte) {
  local_event_status |= ACPI_EVENT_FLAG_ENABLE_SET;
 }



 status = acpi_hw_read(&in_byte, &gpe_register_info->status_address);
 if (ACPI_FAILURE(status)) {
  return (status);
 }

 if (register_bit & in_byte) {
  local_event_status |= ACPI_EVENT_FLAG_STATUS_SET;
 }



 (*event_status) = local_event_status;
 return (AE_OK);
}
