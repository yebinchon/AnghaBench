
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {struct cache_entry** cache; } ;
struct cache_entry {int ce_namelen; int name; scalar_t__ index; int ce_flags; } ;


 int ADD_CACHE_OK_TO_ADD ;
 int ADD_CACHE_OK_TO_REPLACE ;
 int CE_HASHED ;
 int add_index_entry (struct index_state*,struct cache_entry*,int) ;
 int cache_tree_invalidate_path (struct index_state*,int ) ;
 int copy_cache_entry (struct cache_entry*,struct cache_entry*) ;
 struct cache_entry* make_empty_cache_entry (struct index_state*,int) ;
 int memcpy (int ,char const*,int) ;
 int remove_index_entry_at (struct index_state*,int) ;
 int strlen (char const*) ;
 int untracked_cache_remove_from_index (struct index_state*,int ) ;

void rename_index_entry_at(struct index_state *istate, int nr, const char *new_name)
{
 struct cache_entry *old_entry = istate->cache[nr], *new_entry;
 int namelen = strlen(new_name);

 new_entry = make_empty_cache_entry(istate, namelen);
 copy_cache_entry(new_entry, old_entry);
 new_entry->ce_flags &= ~CE_HASHED;
 new_entry->ce_namelen = namelen;
 new_entry->index = 0;
 memcpy(new_entry->name, new_name, namelen + 1);

 cache_tree_invalidate_path(istate, old_entry->name);
 untracked_cache_remove_from_index(istate, old_entry->name);
 remove_index_entry_at(istate, nr);
 add_index_entry(istate, new_entry, ADD_CACHE_OK_TO_ADD|ADD_CACHE_OK_TO_REPLACE);
}
