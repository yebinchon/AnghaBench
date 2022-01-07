
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_MTX_NAMESPACE ;
 int AE_OK ;
 void* acpi_gbl_trace_dbg_layer ;
 void* acpi_gbl_trace_dbg_level ;
 void* acpi_gbl_trace_flags ;
 char const* acpi_gbl_trace_method_name ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;

acpi_status
acpi_debug_trace(const char *name, u32 debug_level, u32 debug_layer, u32 flags)
{
 acpi_status status;

 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  return (status);
 }

 acpi_gbl_trace_method_name = name;
 acpi_gbl_trace_flags = flags;
 acpi_gbl_trace_dbg_level = debug_level;
 acpi_gbl_trace_dbg_layer = debug_layer;
 status = AE_OK;

 (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);
 return (status);
}
