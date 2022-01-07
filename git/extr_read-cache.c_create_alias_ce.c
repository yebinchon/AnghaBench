
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct cache_entry {int ce_flags; int name; } ;


 int CE_ADDED ;
 int _ (char*) ;
 int ce_namelen (struct cache_entry*) ;
 int copy_cache_entry (struct cache_entry*,struct cache_entry*) ;
 int die (int ,int ,int ) ;
 struct cache_entry* make_empty_cache_entry (struct index_state*,int) ;
 int memcpy (int ,int ,int) ;
 int save_or_free_index_entry (struct index_state*,struct cache_entry*) ;

__attribute__((used)) static struct cache_entry *create_alias_ce(struct index_state *istate,
        struct cache_entry *ce,
        struct cache_entry *alias)
{
 int len;
 struct cache_entry *new_entry;

 if (alias->ce_flags & CE_ADDED)
  die(_("will not add file alias '%s' ('%s' already exists in index)"),
      ce->name, alias->name);


 len = ce_namelen(alias);
 new_entry = make_empty_cache_entry(istate, len);
 memcpy(new_entry->name, alias->name, len);
 copy_cache_entry(new_entry, ce);
 save_or_free_index_entry(istate, ce);
 return new_entry;
}
