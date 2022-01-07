
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {char* command; int cmd_num; } ;


 size_t HISTORY_SIZE ;
 TYPE_1__* acpi_gbl_history_buffer ;
 size_t acpi_gbl_lo_history ;
 int acpi_gbl_next_cmd_num ;
 size_t acpi_gbl_next_history_index ;
 size_t acpi_gbl_num_history ;
 void* acpi_os_allocate (scalar_t__) ;
 int acpi_os_free (char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

void acpi_db_add_to_history(char *command_line)
{
 u16 cmd_len;
 u16 buffer_len;



 cmd_len = (u16)strlen(command_line);
 if (!cmd_len) {
  return;
 }

 if (acpi_gbl_history_buffer[acpi_gbl_next_history_index].command !=
     ((void*)0)) {
  buffer_len =
      (u16)
      strlen(acpi_gbl_history_buffer[acpi_gbl_next_history_index].
      command);

  if (cmd_len > buffer_len) {
   acpi_os_free(acpi_gbl_history_buffer
         [acpi_gbl_next_history_index].command);
   acpi_gbl_history_buffer[acpi_gbl_next_history_index].
       command = acpi_os_allocate(cmd_len + 1);
  }
 } else {
  acpi_gbl_history_buffer[acpi_gbl_next_history_index].command =
      acpi_os_allocate(cmd_len + 1);
 }

 strcpy(acpi_gbl_history_buffer[acpi_gbl_next_history_index].command,
        command_line);

 acpi_gbl_history_buffer[acpi_gbl_next_history_index].cmd_num =
     acpi_gbl_next_cmd_num;



 if ((acpi_gbl_num_history == HISTORY_SIZE) &&
     (acpi_gbl_next_history_index == acpi_gbl_lo_history)) {
  acpi_gbl_lo_history++;
  if (acpi_gbl_lo_history >= HISTORY_SIZE) {
   acpi_gbl_lo_history = 0;
  }
 }

 acpi_gbl_next_history_index++;
 if (acpi_gbl_next_history_index >= HISTORY_SIZE) {
  acpi_gbl_next_history_index = 0;
 }

 acpi_gbl_next_cmd_num++;
 if (acpi_gbl_num_history < HISTORY_SIZE) {
  acpi_gbl_num_history++;
 }
}
