
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int pszind_t ;
typedef int extent_hooks_t ;
struct TYPE_6__ {int mtx; scalar_t__ auto_thp_switched; } ;
typedef TYPE_1__ base_t ;
struct TYPE_7__ {size_t size; int extent; int * next; } ;
typedef TYPE_2__ base_block_t ;


 size_t ALIGNMENT_CEILING (size_t,size_t) ;
 size_t HUGEPAGE_CEILING (int ) ;
 uintptr_t HUGEPAGE_MASK ;
 size_t QUANTUM ;
 size_t SC_LARGE_MAXCLASS ;
 int assert (int) ;
 int base_auto_thp_switch (int *,TYPE_1__*) ;
 int base_extent_init (size_t*,int *,void*,size_t) ;
 scalar_t__ base_map (int *,int *,unsigned int,size_t) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 scalar_t__ metadata_thp_always ;
 scalar_t__ metadata_thp_auto ;
 scalar_t__ metadata_thp_madvise () ;
 scalar_t__ opt_metadata_thp ;
 int pages_huge (void*,size_t) ;
 int sz_pind2sz (int ) ;
 int sz_psz2ind (size_t) ;
 int sz_psz2u (size_t) ;

__attribute__((used)) static base_block_t *
base_block_alloc(tsdn_t *tsdn, base_t *base, extent_hooks_t *extent_hooks,
    unsigned ind, pszind_t *pind_last, size_t *extent_sn_next, size_t size,
    size_t alignment) {
 alignment = ALIGNMENT_CEILING(alignment, QUANTUM);
 size_t usize = ALIGNMENT_CEILING(size, alignment);
 size_t header_size = sizeof(base_block_t);
 size_t gap_size = ALIGNMENT_CEILING(header_size, alignment) -
     header_size;







 size_t min_block_size = HUGEPAGE_CEILING(sz_psz2u(header_size + gap_size
     + usize));
 pszind_t pind_next = (*pind_last + 1 < sz_psz2ind(SC_LARGE_MAXCLASS)) ?
     *pind_last + 1 : *pind_last;
 size_t next_block_size = HUGEPAGE_CEILING(sz_pind2sz(pind_next));
 size_t block_size = (min_block_size > next_block_size) ? min_block_size
     : next_block_size;
 base_block_t *block = (base_block_t *)base_map(tsdn, extent_hooks, ind,
     block_size);
 if (block == ((void*)0)) {
  return ((void*)0);
 }

 if (metadata_thp_madvise()) {
  void *addr = (void *)block;
  assert(((uintptr_t)addr & HUGEPAGE_MASK) == 0 &&
      (block_size & HUGEPAGE_MASK) == 0);
  if (opt_metadata_thp == metadata_thp_always) {
   pages_huge(addr, block_size);
  } else if (opt_metadata_thp == metadata_thp_auto &&
      base != ((void*)0)) {

   malloc_mutex_lock(tsdn, &base->mtx);
   base_auto_thp_switch(tsdn, base);
   if (base->auto_thp_switched) {
    pages_huge(addr, block_size);
   }
   malloc_mutex_unlock(tsdn, &base->mtx);
  }
 }

 *pind_last = sz_psz2ind(block_size);
 block->size = block_size;
 block->next = ((void*)0);
 assert(block_size >= header_size);
 base_extent_init(extent_sn_next, &block->extent,
     (void *)((uintptr_t)block + header_size), block_size - header_size);
 return block;
}
