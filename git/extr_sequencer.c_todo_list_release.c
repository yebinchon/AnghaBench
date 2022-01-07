
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct todo_list {scalar_t__ alloc; scalar_t__ nr; int items; int buf; } ;


 int FREE_AND_NULL (int ) ;
 int strbuf_release (int *) ;

void todo_list_release(struct todo_list *todo_list)
{
 strbuf_release(&todo_list->buf);
 FREE_AND_NULL(todo_list->items);
 todo_list->nr = todo_list->alloc = 0;
}
