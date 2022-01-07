
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ACPI_TRACE_ENABLED ;
 int ACPI_TRACE_ONESHOT ;
 int FALSE ;
 int TRUE ;
 int acpi_gbl_trace_flags ;
 scalar_t__ acpi_gbl_trace_method_name ;
 scalar_t__ acpi_gbl_trace_method_object ;
 scalar_t__ strcmp (scalar_t__,char*) ;

__attribute__((used)) static u8 acpi_ex_interpreter_trace_enabled(char *name)
{



 if (!(acpi_gbl_trace_flags & ACPI_TRACE_ENABLED)) {
  return (FALSE);
 }
 if (acpi_gbl_trace_method_object) {
  return (TRUE);
 }

 if (name &&
     (acpi_gbl_trace_method_name &&
      strcmp(acpi_gbl_trace_method_name, name))) {
  return (FALSE);
 }

 if ((acpi_gbl_trace_flags & ACPI_TRACE_ONESHOT) &&
     !acpi_gbl_trace_method_name) {
  return (FALSE);
 }

 return (TRUE);
}
