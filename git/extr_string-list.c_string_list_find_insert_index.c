
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int get_entry_index (struct string_list const*,char const*,int*) ;

int string_list_find_insert_index(const struct string_list *list, const char *string,
      int negative_existing_index)
{
 int exact_match;
 int index = get_entry_index(list, string, &exact_match);
 if (exact_match)
  index = -1 - (negative_existing_index ? index : 0);
 return index;
}
