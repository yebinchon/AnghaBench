
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct acpi_db_command_help {char* invocation; int description; scalar_t__ line_count; } ;


 int FALSE ;
 int TRUE ;
 int acpi_os_printf (char*,char*,int ) ;
 scalar_t__ tolower (int) ;

__attribute__((used)) static u8
acpi_db_match_command_help(const char *command,
      const struct acpi_db_command_help *help)
{
 char *invocation = help->invocation;
 u32 line_count;



 if (*invocation != ' ') {
  return (FALSE);
 }

 while (*invocation == ' ') {
  invocation++;
 }



 while ((*command) && (*invocation) && (*invocation != ' ')) {
  if (tolower((int)*command) != tolower((int)*invocation)) {
   return (FALSE);
  }

  invocation++;
  command++;
 }



 line_count = help->line_count;
 while (line_count) {
  acpi_os_printf("%-38s : %s", help->invocation,
          help->description);
  help++;
  line_count--;
 }

 return (TRUE);
}
