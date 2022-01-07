
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int acpi_handle ;


 scalar_t__ ACPI_EVENT_TYPE_FIXED ;
 scalar_t__ ACPI_EVENT_TYPE_GPE ;
 int fixed_event_count (scalar_t__) ;
 int gpe_count (scalar_t__) ;
 int pr_debug (char*,scalar_t__) ;

__attribute__((used)) static void acpi_global_event_handler(u32 event_type, acpi_handle device,
 u32 event_number, void *context)
{
 if (event_type == ACPI_EVENT_TYPE_GPE) {
  gpe_count(event_number);
  pr_debug("GPE event 0x%02x\n", event_number);
 } else if (event_type == ACPI_EVENT_TYPE_FIXED) {
  fixed_event_count(event_number);
  pr_debug("Fixed event 0x%02x\n", event_number);
 } else {
  pr_debug("Other event 0x%02x\n", event_number);
 }
}
