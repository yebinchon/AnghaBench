
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int version; int cache_nr; int ce_mem_pool; } ;


 int estimate_cache_size (size_t,int ) ;
 int estimate_cache_size_from_compressed (int ) ;
 unsigned long load_cache_entry_block (struct index_state*,int ,int ,int ,char const*,unsigned long,int *) ;
 int mem_pool_init (int *,int ) ;

__attribute__((used)) static unsigned long load_all_cache_entries(struct index_state *istate,
   const char *mmap, size_t mmap_size, unsigned long src_offset)
{
 unsigned long consumed;

 if (istate->version == 4) {
  mem_pool_init(&istate->ce_mem_pool,
    estimate_cache_size_from_compressed(istate->cache_nr));
 } else {
  mem_pool_init(&istate->ce_mem_pool,
    estimate_cache_size(mmap_size, istate->cache_nr));
 }

 consumed = load_cache_entry_block(istate, istate->ce_mem_pool,
     0, istate->cache_nr, mmap, src_offset, ((void*)0));
 return consumed;
}
