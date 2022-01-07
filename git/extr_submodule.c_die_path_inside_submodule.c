
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec_item {int len; char* match; int original; } ;
struct pathspec {int nr; struct pathspec_item* items; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int name; int ce_mode; } ;


 int S_ISGITLINK (int ) ;
 int _ (char*) ;
 int ce_namelen (struct cache_entry*) ;
 int die (int ,int ,int,int ) ;
 scalar_t__ strncmp (int ,char*,int) ;

void die_path_inside_submodule(const struct index_state *istate,
          const struct pathspec *ps)
{
 int i, j;

 for (i = 0; i < istate->cache_nr; i++) {
  struct cache_entry *ce = istate->cache[i];
  int ce_len = ce_namelen(ce);

  if (!S_ISGITLINK(ce->ce_mode))
   continue;

  for (j = 0; j < ps->nr ; j++) {
   const struct pathspec_item *item = &ps->items[j];

   if (item->len <= ce_len)
    continue;
   if (item->match[ce_len] != '/')
    continue;
   if (strncmp(ce->name, item->match, ce_len))
    continue;
   if (item->len == ce_len + 1)
    continue;

   die(_("Pathspec '%s' is in submodule '%.*s'"),
       item->original, ce_len, ce->name);
  }
 }
}
