
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct todo_list {scalar_t__ nr; struct todo_item* items; int alloc; } ;
struct todo_item {int dummy; } ;


 int ALLOC_GROW (struct todo_item*,scalar_t__,int ) ;

__attribute__((used)) static struct todo_item *append_new_todo(struct todo_list *todo_list)
{
 ALLOC_GROW(todo_list->items, todo_list->nr + 1, todo_list->alloc);
 return todo_list->items + todo_list->nr++;
}
