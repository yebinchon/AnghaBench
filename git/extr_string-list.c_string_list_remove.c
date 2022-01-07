
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct string_list {scalar_t__ nr; TYPE_1__* items; scalar_t__ strdup_strings; } ;
struct TYPE_3__ {int util; int string; } ;


 int MOVE_ARRAY (TYPE_1__*,TYPE_1__*,scalar_t__) ;
 int free (int ) ;
 int get_entry_index (struct string_list*,char const*,int*) ;

void string_list_remove(struct string_list *list, const char *string,
   int free_util)
{
 int exact_match;
 int i = get_entry_index(list, string, &exact_match);

 if (exact_match) {
  if (list->strdup_strings)
   free(list->items[i].string);
  if (free_util)
   free(list->items[i].util);

  list->nr--;
  MOVE_ARRAY(list->items + i, list->items + i + 1, list->nr - i);
 }
}
