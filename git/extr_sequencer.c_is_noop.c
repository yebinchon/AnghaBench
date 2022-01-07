
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum todo_command { ____Placeholder_todo_command } todo_command ;


 int const TODO_NOOP ;

__attribute__((used)) static int is_noop(const enum todo_command command)
{
 return TODO_NOOP <= command;
}
