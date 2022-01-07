
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct cache_entry {int mem_pool_allocated; } ;


 int ce_namelen (struct cache_entry const*) ;
 unsigned int ce_size (struct cache_entry const*) ;
 struct cache_entry* make_empty_cache_entry (struct index_state*,int ) ;
 int memcpy (struct cache_entry*,struct cache_entry const*,unsigned int) ;

struct cache_entry *dup_cache_entry(const struct cache_entry *ce,
        struct index_state *istate)
{
 unsigned int size = ce_size(ce);
 int mem_pool_allocated;
 struct cache_entry *new_entry = make_empty_cache_entry(istate, ce_namelen(ce));
 mem_pool_allocated = new_entry->mem_pool_allocated;

 memcpy(new_entry, ce, size);
 new_entry->mem_pool_allocated = mem_pool_allocated;
 return new_entry;
}
