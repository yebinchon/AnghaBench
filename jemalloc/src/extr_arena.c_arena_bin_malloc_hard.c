
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tsdn_t ;
typedef size_t szind_t ;
typedef int extent_t ;
struct TYPE_10__ {int * slabcur; } ;
typedef TYPE_1__ bin_t ;
struct TYPE_11__ {scalar_t__ nregs; } ;
typedef TYPE_2__ bin_info_t ;
typedef int arena_t ;


 int arena_bin_lower_slab (int *,int *,int *,TYPE_1__*) ;
 int * arena_bin_nonfull_slab_get (int *,int *,TYPE_1__*,size_t,unsigned int) ;
 int arena_bin_slabs_full_insert (int *,TYPE_1__*,int *) ;
 int arena_dalloc_bin_slab (int *,int *,int *,TYPE_1__*) ;
 int arena_is_auto (int *) ;
 void* arena_slab_reg_alloc (int *,TYPE_2__ const*) ;
 int assert (int) ;
 TYPE_2__* bin_infos ;
 scalar_t__ extent_nfree_get (int *) ;

__attribute__((used)) static void *
arena_bin_malloc_hard(tsdn_t *tsdn, arena_t *arena, bin_t *bin,
    szind_t binind, unsigned binshard) {
 const bin_info_t *bin_info;
 extent_t *slab;

 bin_info = &bin_infos[binind];
 if (!arena_is_auto(arena) && bin->slabcur != ((void*)0)) {
  arena_bin_slabs_full_insert(arena, bin, bin->slabcur);
  bin->slabcur = ((void*)0);
 }
 slab = arena_bin_nonfull_slab_get(tsdn, arena, bin, binind, binshard);
 if (bin->slabcur != ((void*)0)) {




  if (extent_nfree_get(bin->slabcur) > 0) {
   void *ret = arena_slab_reg_alloc(bin->slabcur,
       bin_info);
   if (slab != ((void*)0)) {
    if (extent_nfree_get(slab) == bin_info->nregs) {
     arena_dalloc_bin_slab(tsdn, arena, slab,
         bin);
    } else {
     arena_bin_lower_slab(tsdn, arena, slab,
         bin);
    }
   }
   return ret;
  }

  arena_bin_slabs_full_insert(arena, bin, bin->slabcur);
  bin->slabcur = ((void*)0);
 }

 if (slab == ((void*)0)) {
  return ((void*)0);
 }
 bin->slabcur = slab;

 assert(extent_nfree_get(bin->slabcur) > 0);

 return arena_slab_reg_alloc(slab, bin_info);
}
