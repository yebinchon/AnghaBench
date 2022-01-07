
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int dummy; } ;
struct index_state {int cache_nr; struct cache_entry** cache; int resolve_undo; } ;
struct cache_entry {int dummy; } ;


 int ce_path_match (struct index_state*,struct cache_entry const*,struct pathspec const*,int *) ;
 int unmerge_index_entry_at (struct index_state*,int) ;

void unmerge_index(struct index_state *istate, const struct pathspec *pathspec)
{
 int i;

 if (!istate->resolve_undo)
  return;

 for (i = 0; i < istate->cache_nr; i++) {
  const struct cache_entry *ce = istate->cache[i];
  if (!ce_path_match(istate, ce, pathspec, ((void*)0)))
   continue;
  i = unmerge_index_entry_at(istate, i);
 }
}
