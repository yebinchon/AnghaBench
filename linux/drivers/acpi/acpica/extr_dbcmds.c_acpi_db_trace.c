
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int * ACPI_ALLOCATE (scalar_t__) ;
 int ACPI_EXECUTER ;
 int ACPI_FREE (int *) ;
 int ACPI_LV_TRACE_POINT ;
 int ACPI_TRACE_ENABLED ;
 int ACPI_TRACE_ONESHOT ;
 int ACPI_TRACE_OPCODE ;
 int * acpi_db_trace_method_name ;
 int acpi_dbg_layer ;
 int acpi_debug_trace (int *,int ,int ,int ) ;
 int acpi_gbl_db_console_debug_level ;
 int acpi_os_printf (char*,char*) ;
 int acpi_ut_strupr (char*) ;
 int strcmp (char*,char*) ;
 int strcpy (int *,char*) ;
 scalar_t__ strlen (char*) ;

void acpi_db_trace(char *enable_arg, char *method_arg, char *once_arg)
{
 u32 debug_level = 0;
 u32 debug_layer = 0;
 u32 flags = 0;

 acpi_ut_strupr(enable_arg);
 acpi_ut_strupr(once_arg);

 if (method_arg) {
  if (acpi_db_trace_method_name) {
   ACPI_FREE(acpi_db_trace_method_name);
   acpi_db_trace_method_name = ((void*)0);
  }

  acpi_db_trace_method_name =
      ACPI_ALLOCATE(strlen(method_arg) + 1);
  if (!acpi_db_trace_method_name) {
   acpi_os_printf("Failed to allocate method name (%s)\n",
           method_arg);
   return;
  }

  strcpy(acpi_db_trace_method_name, method_arg);
 }

 if (!strcmp(enable_arg, "ENABLE") ||
     !strcmp(enable_arg, "METHOD") || !strcmp(enable_arg, "OPCODE")) {
  if (!strcmp(enable_arg, "ENABLE")) {



   debug_level = acpi_gbl_db_console_debug_level;
   debug_layer = acpi_dbg_layer;
  } else {


   debug_level = ACPI_LV_TRACE_POINT;
   debug_layer = ACPI_EXECUTER;
  }

  flags = ACPI_TRACE_ENABLED;

  if (!strcmp(enable_arg, "OPCODE")) {
   flags |= ACPI_TRACE_OPCODE;
  }

  if (once_arg && !strcmp(once_arg, "ONCE")) {
   flags |= ACPI_TRACE_ONESHOT;
  }
 }

 (void)acpi_debug_trace(acpi_db_trace_method_name,
          debug_level, debug_layer, flags);
}
