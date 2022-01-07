
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct repository {TYPE_1__* index; } ;
struct cache_entry {scalar_t__ name; } ;
struct TYPE_2__ {int cache_nr; struct cache_entry** cache; } ;


 int THREE_STAGED ;
 int _ (char*) ;
 int check_one_conflict (TYPE_1__*,int,int*) ;
 int error (int ) ;
 scalar_t__ repo_read_index (struct repository*) ;
 int string_list_insert (struct string_list*,char const*) ;

__attribute__((used)) static int find_conflict(struct repository *r, struct string_list *conflict)
{
 int i;

 if (repo_read_index(r) < 0)
  return error(_("index file corrupt"));

 for (i = 0; i < r->index->cache_nr;) {
  int conflict_type;
  const struct cache_entry *e = r->index->cache[i];
  i = check_one_conflict(r->index, i, &conflict_type);
  if (conflict_type == THREE_STAGED)
   string_list_insert(conflict, (const char *)e->name);
 }
 return 0;
}
