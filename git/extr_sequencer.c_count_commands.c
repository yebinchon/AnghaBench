
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct todo_list {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {scalar_t__ command; } ;


 scalar_t__ TODO_COMMENT ;

__attribute__((used)) static int count_commands(struct todo_list *todo_list)
{
 int count = 0, i;

 for (i = 0; i < todo_list->nr; i++)
  if (todo_list->items[i].command != TODO_COMMENT)
   count++;

 return count;
}
