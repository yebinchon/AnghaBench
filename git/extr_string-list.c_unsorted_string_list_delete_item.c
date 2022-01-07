
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; scalar_t__ strdup_strings; } ;
struct TYPE_2__ {int util; int string; } ;


 int free (int ) ;

void unsorted_string_list_delete_item(struct string_list *list, int i, int free_util)
{
 if (list->strdup_strings)
  free(list->items[i].string);
 if (free_util)
  free(list->items[i].util);
 list->items[i] = list->items[list->nr-1];
 list->nr--;
}
