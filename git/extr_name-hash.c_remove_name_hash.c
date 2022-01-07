
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int name_hash; int name_hash_initialized; } ;
struct cache_entry {int ce_flags; int ent; } ;


 int CE_HASHED ;
 int hashmap_remove (int *,int *,struct cache_entry*) ;
 scalar_t__ ignore_case ;
 int remove_dir_entry (struct index_state*,struct cache_entry*) ;

void remove_name_hash(struct index_state *istate, struct cache_entry *ce)
{
 if (!istate->name_hash_initialized || !(ce->ce_flags & CE_HASHED))
  return;
 ce->ce_flags &= ~CE_HASHED;
 hashmap_remove(&istate->name_hash, &ce->ent, ce);

 if (ignore_case)
  remove_dir_entry(istate, ce);
}
