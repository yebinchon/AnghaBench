
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; scalar_t__ strdup_strings; } ;
typedef scalar_t__ (* string_list_each_func_t ) (TYPE_1__*,void*) ;
struct TYPE_3__ {int util; int string; } ;


 int free (int ) ;

void filter_string_list(struct string_list *list, int free_util,
   string_list_each_func_t want, void *cb_data)
{
 int src, dst = 0;
 for (src = 0; src < list->nr; src++) {
  if (want(&list->items[src], cb_data)) {
   list->items[dst++] = list->items[src];
  } else {
   if (list->strdup_strings)
    free(list->items[src].string);
   if (free_util)
    free(list->items[src].util);
  }
 }
 list->nr = dst;
}
