
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int acpi_trace_event_type ;


 int ACPI_DB_TRACE_POINT ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int acpi_ex_get_trace_event_name (int ) ;
 int ex_trace_point ;

void
acpi_ex_trace_point(acpi_trace_event_type type,
      u8 begin, u8 *aml, char *pathname)
{

 ACPI_FUNCTION_NAME(ex_trace_point);

 if (pathname) {
  ACPI_DEBUG_PRINT((ACPI_DB_TRACE_POINT,
      "%s %s [0x%p:%s] execution.\n",
      acpi_ex_get_trace_event_name(type),
      begin ? "Begin" : "End", aml, pathname));
 } else {
  ACPI_DEBUG_PRINT((ACPI_DB_TRACE_POINT,
      "%s %s [0x%p] execution.\n",
      acpi_ex_get_trace_event_name(type),
      begin ? "Begin" : "End", aml));
 }
}
