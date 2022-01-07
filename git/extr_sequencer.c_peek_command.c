
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct todo_list {int current; int nr; TYPE_1__* items; } ;
typedef enum todo_command { ____Placeholder_todo_command } todo_command ;
struct TYPE_2__ {int command; } ;


 int is_noop (int) ;

__attribute__((used)) static enum todo_command peek_command(struct todo_list *todo_list, int offset)
{
 int i;

 for (i = todo_list->current + offset; i < todo_list->nr; i++)
  if (!is_noop(todo_list->items[i].command))
   return todo_list->items[i].command;

 return -1;
}
