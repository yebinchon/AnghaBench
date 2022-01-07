
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; int (* cmp ) (char const*,int ) ;TYPE_1__* items; } ;
typedef int (* compare_strings_fn ) (char const*,int ) ;
struct TYPE_2__ {int string; } ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int get_entry_index(const struct string_list *list, const char *string,
  int *exact_match)
{
 int left = -1, right = list->nr;
 compare_strings_fn cmp = list->cmp ? list->cmp : strcmp;

 while (left + 1 < right) {
  int middle = left + (right - left) / 2;
  int compare = cmp(string, list->items[middle].string);
  if (compare < 0)
   right = middle;
  else if (compare > 0)
   left = middle;
  else {
   *exact_match = 1;
   return middle;
  }
 }

 *exact_match = 0;
 return right;
}
