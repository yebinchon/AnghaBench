
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int nr; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int dummy; } ;


 int ce_path_match (struct index_state const*,struct cache_entry const*,struct pathspec const*,char*) ;

void add_pathspec_matches_against_index(const struct pathspec *pathspec,
     const struct index_state *istate,
     char *seen)
{
 int num_unmatched = 0, i;







 for (i = 0; i < pathspec->nr; i++)
  if (!seen[i])
   num_unmatched++;
 if (!num_unmatched)
  return;
 for (i = 0; i < istate->cache_nr; i++) {
  const struct cache_entry *ce = istate->cache[i];
  ce_path_match(istate, ce, pathspec, seen);
 }
}
