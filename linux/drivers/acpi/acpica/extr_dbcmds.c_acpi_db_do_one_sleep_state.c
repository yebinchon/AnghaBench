
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int acpi_status ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 size_t ACPI_S_STATES_MAX ;
 int AE_INFO ;
 int acpi_enter_sleep_state (size_t) ;
 int acpi_enter_sleep_state_prep (size_t) ;
 int acpi_format_exception (int ) ;
 int * acpi_gbl_sleep_state_names ;
 int acpi_get_sleep_type_data (size_t,size_t*,size_t*) ;
 int acpi_leave_sleep_state (size_t) ;
 int acpi_leave_sleep_state_prep (size_t) ;
 int acpi_os_printf (char*,size_t,...) ;

__attribute__((used)) static void acpi_db_do_one_sleep_state(u8 sleep_state)
{
 acpi_status status;
 u8 sleep_type_a;
 u8 sleep_type_b;



 if (sleep_state > ACPI_S_STATES_MAX) {
  acpi_os_printf("Sleep state %d out of range (%d max)\n",
          sleep_state, ACPI_S_STATES_MAX);
  return;
 }

 acpi_os_printf("\n---- Invoking sleep state S%d (%s):\n",
         sleep_state, acpi_gbl_sleep_state_names[sleep_state]);



 status =
     acpi_get_sleep_type_data(sleep_state, &sleep_type_a, &sleep_type_b);
 if (ACPI_FAILURE(status)) {
  acpi_os_printf("Could not evaluate [%s] method, %s\n",
          acpi_gbl_sleep_state_names[sleep_state],
          acpi_format_exception(status));
  return;
 }

 acpi_os_printf
     ("Register values for sleep state S%d: Sleep-A: %.2X, Sleep-B: %.2X\n",
      sleep_state, sleep_type_a, sleep_type_b);



 acpi_os_printf("**** Sleep: Prepare to sleep (S%d) ****\n",
         sleep_state);
 status = acpi_enter_sleep_state_prep(sleep_state);
 if (ACPI_FAILURE(status)) {
  goto error_exit;
 }

 acpi_os_printf("**** Sleep: Going to sleep (S%d) ****\n", sleep_state);
 status = acpi_enter_sleep_state(sleep_state);
 if (ACPI_FAILURE(status)) {
  goto error_exit;
 }

 acpi_os_printf("**** Wake: Prepare to return from sleep (S%d) ****\n",
         sleep_state);
 status = acpi_leave_sleep_state_prep(sleep_state);
 if (ACPI_FAILURE(status)) {
  goto error_exit;
 }

 acpi_os_printf("**** Wake: Return from sleep (S%d) ****\n",
         sleep_state);
 status = acpi_leave_sleep_state(sleep_state);
 if (ACPI_FAILURE(status)) {
  goto error_exit;
 }

 return;

error_exit:
 ACPI_EXCEPTION((AE_INFO, status, "During invocation of sleep state S%d",
   sleep_state));
}
