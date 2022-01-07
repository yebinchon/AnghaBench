
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {int string; } ;


 scalar_t__ strstr (int ,char*) ;
 int unsorted_string_list_delete_item (struct string_list*,int,int ) ;

__attribute__((used)) static void exclude_helpers_from_list(struct string_list *list)
{
 int i = 0;

 while (i < list->nr) {
  if (strstr(list->items[i].string, "--"))
   unsorted_string_list_delete_item(list, i, 0);
  else
   i++;
 }
}
