
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct rename {int pair; } ;
struct TYPE_2__ {struct rename* util; } ;


 int diff_free_filepair (int ) ;
 int free (struct string_list*) ;
 int string_list_clear (struct string_list*,int) ;

__attribute__((used)) static void final_cleanup_rename(struct string_list *rename)
{
 const struct rename *re;
 int i;

 if (rename == ((void*)0))
  return;

 for (i = 0; i < rename->nr; i++) {
  re = rename->items[i].util;
  diff_free_filepair(re->pair);
 }
 string_list_clear(rename, 1);
 free(rename);
}
