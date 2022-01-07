
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE (int (*) (char*)) ;
 scalar_t__ ACPI_S_STATES_MAX ;
 int AE_OK ;
 int acpi_db_do_one_sleep_state (scalar_t__) ;
 int acpi_os_printf (char*,scalar_t__) ;
 int return_ACPI_STATUS (int ) ;
 scalar_t__ strtoul (char*,int *,int ) ;

acpi_status acpi_db_sleep(char *object_arg)
{
 u8 sleep_state;
 u32 i;

 ACPI_FUNCTION_TRACE(acpi_db_sleep);



 if (!object_arg) {
  acpi_os_printf("Invoking all possible sleep states, 0-%d\n",
          ACPI_S_STATES_MAX);

  for (i = 0; i <= ACPI_S_STATES_MAX; i++) {
   acpi_db_do_one_sleep_state((u8)i);
  }

  return_ACPI_STATUS(AE_OK);
 }



 sleep_state = (u8)strtoul(object_arg, ((void*)0), 0);
 acpi_db_do_one_sleep_state(sleep_state);
 return_ACPI_STATUS(AE_OK);
}
