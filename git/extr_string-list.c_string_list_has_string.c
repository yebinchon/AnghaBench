
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int get_entry_index (struct string_list const*,char const*,int*) ;

int string_list_has_string(const struct string_list *list, const char *string)
{
 int exact_match;
 get_entry_index(list, string, &exact_match);
 return exact_match;
}
