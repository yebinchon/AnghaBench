
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int name_hash; } ;
struct cache_entry {int ce_flags; int ent; int name; } ;


 int CE_HASHED ;
 int add_dir_entry (struct index_state*,struct cache_entry*) ;
 int ce_namelen (struct cache_entry*) ;
 int hashmap_add (int *,int *) ;
 int hashmap_entry_init (int *,int ) ;
 scalar_t__ ignore_case ;
 int memihash (int ,int ) ;

__attribute__((used)) static void hash_index_entry(struct index_state *istate, struct cache_entry *ce)
{
 if (ce->ce_flags & CE_HASHED)
  return;
 ce->ce_flags |= CE_HASHED;
 hashmap_entry_init(&ce->ent, memihash(ce->name, ce_namelen(ce)));
 hashmap_add(&istate->name_hash, &ce->ent);

 if (ignore_case)
  add_dir_entry(istate, ce);
}
