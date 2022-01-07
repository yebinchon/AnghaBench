
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int extent_t ;
struct TYPE_4__ {int nonfull_slabs; } ;
struct TYPE_5__ {TYPE_1__ stats; int slabs_nonfull; } ;
typedef TYPE_2__ bin_t ;


 scalar_t__ config_stats ;
 int extent_heap_remove (int *,int *) ;

__attribute__((used)) static void
arena_bin_slabs_nonfull_remove(bin_t *bin, extent_t *slab) {
 extent_heap_remove(&bin->slabs_nonfull, slab);
 if (config_stats) {
  bin->stats.nonfull_slabs--;
 }
}
