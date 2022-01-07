
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int acpi_status ;


 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_MAX_SLEEP ;
 int AE_OK ;
 int acpi_ex_enter_interpreter () ;
 int acpi_ex_exit_interpreter () ;
 int acpi_os_sleep (scalar_t__) ;

acpi_status acpi_ex_system_do_sleep(u64 how_long)
{
 ACPI_FUNCTION_ENTRY();



 acpi_ex_exit_interpreter();





 if (how_long > ACPI_MAX_SLEEP) {
  how_long = ACPI_MAX_SLEEP;
 }

 acpi_os_sleep(how_long);



 acpi_ex_enter_interpreter();
 return (AE_OK);
}
