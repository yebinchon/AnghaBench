
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {char* string; int * util; } ;
struct string_list {scalar_t__ nr; struct string_list_item* items; int alloc; } ;


 int ALLOC_GROW (struct string_list_item*,scalar_t__,int ) ;

struct string_list_item *string_list_append_nodup(struct string_list *list,
        char *string)
{
 struct string_list_item *retval;
 ALLOC_GROW(list->items, list->nr + 1, list->alloc);
 retval = &list->items[list->nr++];
 retval->string = string;
 retval->util = ((void*)0);
 return retval;
}
