
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {scalar_t__ string; void* util; } ;
struct string_list {int dummy; } ;


 struct string_list_item* string_list_lookup (struct string_list*,scalar_t__) ;

__attribute__((used)) static int remove_available_paths(struct string_list_item *item, void *cb_data)
{
 struct string_list *available_paths = cb_data;
 struct string_list_item *available;

 available = string_list_lookup(available_paths, item->string);
 if (available)
  available->util = (void *)item->string;
 return !available;
}
