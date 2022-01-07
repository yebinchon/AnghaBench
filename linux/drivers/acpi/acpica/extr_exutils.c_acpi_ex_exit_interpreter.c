
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_INTERPRETER ;
 int ACPI_MTX_NAMESPACE ;
 int AE_INFO ;
 int acpi_ut_release_mutex (int ) ;
 int ex_exit_interpreter ;
 int return_VOID ;

void acpi_ex_exit_interpreter(void)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ex_exit_interpreter);

 status = acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  ACPI_ERROR((AE_INFO, "Could not release AML Namespace mutex"));
 }
 status = acpi_ut_release_mutex(ACPI_MTX_INTERPRETER);
 if (ACPI_FAILURE(status)) {
  ACPI_ERROR((AE_INFO,
       "Could not release AML Interpreter mutex"));
 }

 return_VOID;
}
