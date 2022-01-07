
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {struct index_state* index; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; int ce_namelen; int name; int ce_mode; } ;


 int ADD_CACHE_SKIP_DFCHECK ;
 int CE_CONFLICTED ;
 int _ (char*) ;
 scalar_t__ add_index_entry (struct index_state*,struct cache_entry*,int ) ;
 int ce_namelen (struct cache_entry*) ;
 int ce_stage (struct cache_entry*) ;
 int create_ce_flags (int ) ;
 int error (int ,int ) ;
 struct cache_entry* make_empty_cache_entry (struct index_state*,int) ;
 int memcpy (int ,int ,int) ;
 int repo_read_index (struct repository*) ;

int repo_read_index_unmerged(struct repository *repo)
{
 struct index_state *istate;
 int i;
 int unmerged = 0;

 repo_read_index(repo);
 istate = repo->index;
 for (i = 0; i < istate->cache_nr; i++) {
  struct cache_entry *ce = istate->cache[i];
  struct cache_entry *new_ce;
  int len;

  if (!ce_stage(ce))
   continue;
  unmerged = 1;
  len = ce_namelen(ce);
  new_ce = make_empty_cache_entry(istate, len);
  memcpy(new_ce->name, ce->name, len);
  new_ce->ce_flags = create_ce_flags(0) | CE_CONFLICTED;
  new_ce->ce_namelen = len;
  new_ce->ce_mode = ce->ce_mode;
  if (add_index_entry(istate, new_ce, ADD_CACHE_SKIP_DFCHECK))
   return error(_("%s: cannot drop to stage #0"),
         new_ce->name);
 }
 return unmerged;
}
