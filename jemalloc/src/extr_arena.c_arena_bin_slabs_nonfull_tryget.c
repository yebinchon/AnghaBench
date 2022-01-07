
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int extent_t ;
struct TYPE_4__ {int nonfull_slabs; int reslabs; } ;
struct TYPE_5__ {TYPE_1__ stats; int slabs_nonfull; } ;
typedef TYPE_2__ bin_t ;


 scalar_t__ config_stats ;
 int * extent_heap_remove_first (int *) ;

__attribute__((used)) static extent_t *
arena_bin_slabs_nonfull_tryget(bin_t *bin) {
 extent_t *slab = extent_heap_remove_first(&bin->slabs_nonfull);
 if (slab == ((void*)0)) {
  return ((void*)0);
 }
 if (config_stats) {
  bin->stats.reslabs++;
  bin->stats.nonfull_slabs--;
 }
 return slab;
}
