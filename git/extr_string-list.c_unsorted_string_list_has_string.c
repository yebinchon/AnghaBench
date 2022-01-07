
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int * unsorted_string_list_lookup (struct string_list*,char const*) ;

int unsorted_string_list_has_string(struct string_list *list,
        const char *string)
{
 return unsorted_string_list_lookup(list, string) != ((void*)0);
}
