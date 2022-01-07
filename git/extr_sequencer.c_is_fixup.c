
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum todo_command { ____Placeholder_todo_command } todo_command ;


 int TODO_FIXUP ;
 int TODO_SQUASH ;

__attribute__((used)) static int is_fixup(enum todo_command command)
{
 return command == TODO_FIXUP || command == TODO_SQUASH;
}
