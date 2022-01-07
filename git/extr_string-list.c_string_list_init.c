
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int strdup_strings; } ;


 int memset (struct string_list*,int ,int) ;

void string_list_init(struct string_list *list, int strdup_strings)
{
 memset(list, 0, sizeof(*list));
 list->strdup_strings = strdup_strings;
}
