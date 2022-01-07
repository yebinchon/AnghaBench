
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int filter_string_list (struct string_list*,int,int ,int *) ;
 int item_is_not_empty ;

void string_list_remove_empty_items(struct string_list *list, int free_util)
{
 filter_string_list(list, free_util, item_is_not_empty, ((void*)0));
}
