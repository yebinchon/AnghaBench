
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int dummy; } ;
struct string_list {struct string_list_item* items; } ;


 int get_entry_index (struct string_list*,char const*,int*) ;

struct string_list_item *string_list_lookup(struct string_list *list, const char *string)
{
 int exact_match, i = get_entry_index(list, string, &exact_match);
 if (!exact_match)
  return ((void*)0);
 return list->items + i;
}
