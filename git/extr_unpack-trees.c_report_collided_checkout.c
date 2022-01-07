
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; int cmp; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; int name; } ;
struct TYPE_2__ {char* string; } ;


 int CE_MATCHED ;
 struct string_list STRING_LIST_INIT_NODUP ;
 int _ (char*) ;
 int fprintf (int ,char*,char*) ;
 int fspathcmp ;
 int stderr ;
 int string_list_append (struct string_list*,int ) ;
 int string_list_clear (struct string_list*,int ) ;
 int string_list_sort (struct string_list*) ;
 int warning (int ) ;

__attribute__((used)) static void report_collided_checkout(struct index_state *index)
{
 struct string_list list = STRING_LIST_INIT_NODUP;
 int i;

 for (i = 0; i < index->cache_nr; i++) {
  struct cache_entry *ce = index->cache[i];

  if (!(ce->ce_flags & CE_MATCHED))
   continue;

  string_list_append(&list, ce->name);
  ce->ce_flags &= ~CE_MATCHED;
 }

 list.cmp = fspathcmp;
 string_list_sort(&list);

 if (list.nr) {
  warning(_("the following paths have collided (e.g. case-sensitive paths\n"
     "on a case-insensitive filesystem) and only one from the same\n"
     "colliding group is in the working tree:\n"));

  for (i = 0; i < list.nr; i++)
   fprintf(stderr, "  '%s'\n", list.items[i].string);
 }

 string_list_clear(&list, 0);
}
