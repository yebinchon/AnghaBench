
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ev_fixed_event_initialize () ;
 int acpi_ev_gpe_initialize () ;
 scalar_t__ acpi_gbl_reduced_hardware ;
 int ev_initialize_events ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ev_initialize_events(void)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_initialize_events);



 if (acpi_gbl_reduced_hardware) {
  return_ACPI_STATUS(AE_OK);
 }






 status = acpi_ev_fixed_event_initialize();
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status,
    "Unable to initialize fixed events"));
  return_ACPI_STATUS(status);
 }

 status = acpi_ev_gpe_initialize();
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status,
    "Unable to initialize general purpose events"));
  return_ACPI_STATUS(status);
 }

 return_ACPI_STATUS(status);
}
