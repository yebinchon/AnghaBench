
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int ACPI_DB_CONSOLE_OUTPUT ;
 int ACPI_DEBUG_BUFFER_SIZE ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) ()) ;
 int ACPI_LV_TABLES ;
 int ACPI_LV_VERBOSITY2 ;
 int ACPI_NORMAL_DEFAULT ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 scalar_t__ AML_ROOT_PREFIX ;
 int DEBUGGER_MULTI_THREADED ;
 void* FALSE ;
 int OSL_DEBUGGER_MAIN_THREAD ;
 void* TRUE ;
 int acpi_db_execute_thread ;
 int * acpi_gbl_db_buffer ;
 int acpi_gbl_db_console_debug_level ;
 int acpi_gbl_db_debug_level ;
 int * acpi_gbl_db_filename ;
 void* acpi_gbl_db_opt_no_ini_methods ;
 int acpi_gbl_db_output_flags ;
 void* acpi_gbl_db_output_to_file ;
 scalar_t__* acpi_gbl_db_scope_buf ;
 int acpi_gbl_db_scope_node ;
 void* acpi_gbl_db_terminate_loop ;
 int acpi_gbl_db_thread_id ;
 void* acpi_gbl_db_threads_terminated ;
 int acpi_gbl_debugger_configuration ;
 int acpi_gbl_root_node ;
 int * acpi_os_allocate (int ) ;
 int acpi_os_execute (int ,int ,int *) ;
 int acpi_os_get_thread_id () ;
 int acpi_os_initialize_debugger () ;
 int acpi_os_printf (char*) ;
 int memset (int *,int ,int ) ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_initialize_debugger(void)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(acpi_initialize_debugger);



 acpi_gbl_db_buffer = ((void*)0);
 acpi_gbl_db_filename = ((void*)0);
 acpi_gbl_db_output_to_file = FALSE;

 acpi_gbl_db_debug_level = ACPI_LV_VERBOSITY2;
 acpi_gbl_db_console_debug_level = ACPI_NORMAL_DEFAULT | ACPI_LV_TABLES;
 acpi_gbl_db_output_flags = ACPI_DB_CONSOLE_OUTPUT;

 acpi_gbl_db_opt_no_ini_methods = FALSE;

 acpi_gbl_db_buffer = acpi_os_allocate(ACPI_DEBUG_BUFFER_SIZE);
 if (!acpi_gbl_db_buffer) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }
 memset(acpi_gbl_db_buffer, 0, ACPI_DEBUG_BUFFER_SIZE);



 acpi_gbl_db_scope_buf[0] = AML_ROOT_PREFIX;
 acpi_gbl_db_scope_buf[1] = 0;
 acpi_gbl_db_scope_node = acpi_gbl_root_node;



 acpi_gbl_db_terminate_loop = FALSE;






 if (acpi_gbl_debugger_configuration & DEBUGGER_MULTI_THREADED) {



  status = acpi_os_initialize_debugger();
  if (ACPI_FAILURE(status)) {
   acpi_os_printf("Could not get debugger mutex\n");
   return_ACPI_STATUS(status);
  }



  acpi_gbl_db_threads_terminated = FALSE;
  status = acpi_os_execute(OSL_DEBUGGER_MAIN_THREAD,
      acpi_db_execute_thread, ((void*)0));
  if (ACPI_FAILURE(status)) {
   ACPI_EXCEPTION((AE_INFO, status,
     "Could not start debugger thread"));
   acpi_gbl_db_threads_terminated = TRUE;
   return_ACPI_STATUS(status);
  }
 } else {
  acpi_gbl_db_thread_id = acpi_os_get_thread_id();
 }

 return_ACPI_STATUS(AE_OK);
}
