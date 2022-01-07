
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef scalar_t__ acpi_status ;
typedef int acpi_mutex ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DO_NOT_WAIT ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 scalar_t__ AE_TIME ;
 int acpi_ex_enter_interpreter () ;
 int acpi_ex_exit_interpreter () ;
 int acpi_format_exception (scalar_t__) ;
 scalar_t__ acpi_os_acquire_mutex (int ,int ) ;
 int ex_system_wait_mutex ;
 int return_ACPI_STATUS (scalar_t__) ;

acpi_status acpi_ex_system_wait_mutex(acpi_mutex mutex, u16 timeout)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ex_system_wait_mutex);

 status = acpi_os_acquire_mutex(mutex, ACPI_DO_NOT_WAIT);
 if (ACPI_SUCCESS(status)) {
  return_ACPI_STATUS(status);
 }

 if (status == AE_TIME) {



  acpi_ex_exit_interpreter();
  status = acpi_os_acquire_mutex(mutex, timeout);

  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "*** Thread awake after blocking, %s\n",
      acpi_format_exception(status)));



  acpi_ex_enter_interpreter();
 }

 return_ACPI_STATUS(status);
}
