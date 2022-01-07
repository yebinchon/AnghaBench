
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {scalar_t__ mem_pool_allocated; int ce_namelen; } ;


 int cache_entry_size (int ) ;
 int free (struct cache_entry*) ;
 int memset (struct cache_entry*,int,int ) ;
 scalar_t__ should_validate_cache_entries () ;

void discard_cache_entry(struct cache_entry *ce)
{
 if (ce && should_validate_cache_entries())
  memset(ce, 0xCD, cache_entry_size(ce->ce_namelen));

 if (ce && ce->mem_pool_allocated)
  return;

 free(ce);
}
