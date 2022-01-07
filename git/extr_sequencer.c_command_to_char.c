
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum todo_command { ____Placeholder_todo_command } todo_command ;
struct TYPE_2__ {char c; } ;


 int const TODO_COMMENT ;
 char comment_line_char ;
 TYPE_1__* todo_command_info ;

__attribute__((used)) static char command_to_char(const enum todo_command command)
{
 if (command < TODO_COMMENT && todo_command_info[command].c)
  return todo_command_info[command].c;
 return comment_line_char;
}
