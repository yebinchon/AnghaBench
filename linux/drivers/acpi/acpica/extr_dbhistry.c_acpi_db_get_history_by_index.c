
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct TYPE_2__ {scalar_t__ cmd_num; char* command; } ;


 size_t HISTORY_SIZE ;
 TYPE_1__* acpi_gbl_history_buffer ;
 size_t acpi_gbl_lo_history ;
 scalar_t__ acpi_gbl_num_history ;
 int acpi_os_printf (char*,size_t) ;

char *acpi_db_get_history_by_index(u32 cmd_num)
{
 u32 i;
 u16 history_index;



 history_index = acpi_gbl_lo_history;
 for (i = 0; i < acpi_gbl_num_history; i++) {
  if (acpi_gbl_history_buffer[history_index].cmd_num == cmd_num) {



   return (acpi_gbl_history_buffer[history_index].command);
  }



  history_index++;
  if (history_index >= HISTORY_SIZE) {
   history_index = 0;
  }
 }

 acpi_os_printf("Invalid history number: %u\n", history_index);
 return (((void*)0));
}
