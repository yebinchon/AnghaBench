
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int dummy; } ;
struct string_list {scalar_t__ strdup_strings; } ;


 struct string_list_item* string_list_append_nodup (struct string_list*,char*) ;
 char* xstrdup (char const*) ;

struct string_list_item *string_list_append(struct string_list *list,
         const char *string)
{
 return string_list_append_nodup(
   list,
   list->strdup_strings ? xstrdup(string) : (char *)string);
}
