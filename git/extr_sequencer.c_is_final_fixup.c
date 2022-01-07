
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct todo_list {int current; int nr; TYPE_1__* items; } ;
struct TYPE_2__ {int command; } ;


 scalar_t__ is_fixup (int ) ;
 int is_noop (int ) ;

__attribute__((used)) static int is_final_fixup(struct todo_list *todo_list)
{
 int i = todo_list->current;

 if (!is_fixup(todo_list->items[i].command))
  return 0;

 while (++i < todo_list->nr)
  if (is_fixup(todo_list->items[i].command))
   return 0;
  else if (!is_noop(todo_list->items[i].command))
   break;
 return 1;
}
