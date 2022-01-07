
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* bitmap; } ;
typedef TYPE_1__ slab_data_t ;
typedef int extent_t ;
typedef scalar_t__ bitmap_t ;
struct TYPE_6__ {size_t reg_size; int bitmap_info; } ;
typedef TYPE_2__ bin_info_t ;


 unsigned int LG_BITMAP_GROUP_NBITS ;
 int assert (int) ;
 int bitmap_full (scalar_t__*,int *) ;
 size_t bitmap_sfu (scalar_t__*,int *) ;
 size_t cfs_lu (scalar_t__*) ;
 scalar_t__ extent_addr_get (int *) ;
 unsigned int extent_nfree_get (int *) ;
 int extent_nfree_sub (int *,unsigned int) ;
 TYPE_1__* extent_slab_data_get (int *) ;
 size_t popcount_lu (scalar_t__) ;

__attribute__((used)) static void
arena_slab_reg_alloc_batch(extent_t *slab, const bin_info_t *bin_info,
      unsigned cnt, void** ptrs) {
 slab_data_t *slab_data = extent_slab_data_get(slab);

 assert(extent_nfree_get(slab) >= cnt);
 assert(!bitmap_full(slab_data->bitmap, &bin_info->bitmap_info));


 for (unsigned i = 0; i < cnt; i++) {
  size_t regind = bitmap_sfu(slab_data->bitmap,
        &bin_info->bitmap_info);
  *(ptrs + i) = (void *)((uintptr_t)extent_addr_get(slab) +
      (uintptr_t)(bin_info->reg_size * regind));
 }
 extent_nfree_sub(slab, cnt);
}
