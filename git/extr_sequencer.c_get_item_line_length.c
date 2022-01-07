
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct todo_list {int dummy; } ;


 int get_item_line_offset (struct todo_list*,int) ;

__attribute__((used)) static int get_item_line_length(struct todo_list *todo_list, int index)
{
 return get_item_line_offset(todo_list, index + 1)
  - get_item_line_offset(todo_list, index);
}
