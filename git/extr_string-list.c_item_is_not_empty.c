
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {char* string; } ;



__attribute__((used)) static int item_is_not_empty(struct string_list_item *item, void *unused)
{
 return *item->string != '\0';
}
