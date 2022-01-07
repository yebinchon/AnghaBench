
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum todo_command { ____Placeholder_todo_command } todo_command ;
struct TYPE_2__ {char const* str; } ;


 int const TODO_COMMENT ;
 int _ (char*) ;
 int die (int ,int const) ;
 TYPE_1__* todo_command_info ;

__attribute__((used)) static const char *command_to_string(const enum todo_command command)
{
 if (command < TODO_COMMENT)
  return todo_command_info[command].str;
 die(_("unknown command: %d"), command);
}
