
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_INFO ;
 scalar_t__ TRUE ;
 int acpi_ev_terminate () ;
 scalar_t__ acpi_gbl_shutdown ;
 scalar_t__ acpi_gbl_startup_flags ;
 int acpi_ns_terminate () ;
 int acpi_tb_terminate () ;
 int acpi_ut_delete_caches () ;
 int acpi_ut_interface_terminate () ;
 int acpi_ut_terminate () ;
 int return_VOID ;
 int ut_subsystem_shutdown ;

void acpi_ut_subsystem_shutdown(void)
{
 ACPI_FUNCTION_TRACE(ut_subsystem_shutdown);



 if (acpi_gbl_shutdown) {
  ACPI_ERROR((AE_INFO, "ACPI Subsystem is already terminated"));
  return_VOID;
 }



 acpi_gbl_shutdown = TRUE;
 acpi_gbl_startup_flags = 0;
 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Shutting down ACPI Subsystem\n"));





 acpi_ev_terminate();



 acpi_ut_interface_terminate();




 acpi_ns_terminate();



 acpi_tb_terminate();



 acpi_ut_terminate();



 (void)acpi_ut_delete_caches();
 return_VOID;
}
