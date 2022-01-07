
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; scalar_t__ strdup_strings; int (* cmp ) (int ,int ) ;} ;
typedef int (* compare_strings_fn ) (int ,int ) ;
struct TYPE_2__ {int util; int string; } ;


 int free (int ) ;
 int strcmp (int ,int ) ;

void string_list_remove_duplicates(struct string_list *list, int free_util)
{
 if (list->nr > 1) {
  int src, dst;
  compare_strings_fn cmp = list->cmp ? list->cmp : strcmp;
  for (src = dst = 1; src < list->nr; src++) {
   if (!cmp(list->items[dst - 1].string, list->items[src].string)) {
    if (list->strdup_strings)
     free(list->items[src].string);
    if (free_util)
     free(list->items[src].util);
   } else
    list->items[dst++] = list->items[src];
  }
  list->nr = dst;
 }
}
