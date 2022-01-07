
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int dummy; } ;
struct string_list {struct string_list_item* items; } ;


 int add_entry (int,struct string_list*,char const*) ;

struct string_list_item *string_list_insert(struct string_list *list, const char *string)
{
 int index = add_entry(-1, list, string);

 if (index < 0)
  index = -1 - index;

 return list->items + index;
}
