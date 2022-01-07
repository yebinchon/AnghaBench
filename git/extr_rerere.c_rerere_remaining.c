
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list_item {int util; } ;
struct string_list {int dummy; } ;
struct repository {TYPE_1__* index; } ;
struct cache_entry {scalar_t__ name; } ;
struct TYPE_2__ {int cache_nr; struct cache_entry** cache; } ;


 int PUNTED ;
 int RERERE_READONLY ;
 int RERERE_RESOLVED ;
 int RESOLVED ;
 int _ (char*) ;
 int check_one_conflict (TYPE_1__*,int,int*) ;
 int error (int ) ;
 int free_rerere_id (struct string_list_item*) ;
 scalar_t__ repo_read_index (struct repository*) ;
 scalar_t__ setup_rerere (struct repository*,struct string_list*,int ) ;
 int string_list_insert (struct string_list*,char const*) ;
 struct string_list_item* string_list_lookup (struct string_list*,char const*) ;

int rerere_remaining(struct repository *r, struct string_list *merge_rr)
{
 int i;

 if (setup_rerere(r, merge_rr, RERERE_READONLY))
  return 0;
 if (repo_read_index(r) < 0)
  return error(_("index file corrupt"));

 for (i = 0; i < r->index->cache_nr;) {
  int conflict_type;
  const struct cache_entry *e = r->index->cache[i];
  i = check_one_conflict(r->index, i, &conflict_type);
  if (conflict_type == PUNTED)
   string_list_insert(merge_rr, (const char *)e->name);
  else if (conflict_type == RESOLVED) {
   struct string_list_item *it;
   it = string_list_lookup(merge_rr, (const char *)e->name);
   if (it != ((void*)0)) {
    free_rerere_id(it);
    it->util = RERERE_RESOLVED;
   }
  }
 }
 return 0;
}
