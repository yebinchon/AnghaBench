
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t ACPI_EVENT_MAX ;
 char const** acpi_gbl_event_types ;

const char *acpi_ut_get_event_name(u32 event_id)
{

 if (event_id > ACPI_EVENT_MAX) {
  return ("InvalidEventID");
 }

 return (acpi_gbl_event_types[event_id]);
}
