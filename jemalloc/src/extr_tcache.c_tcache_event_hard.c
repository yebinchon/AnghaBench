
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_16__ {size_t next_gc_bin; int* bin_refilled; int* lg_fill_div; } ;
typedef TYPE_2__ tcache_t ;
typedef size_t szind_t ;
struct TYPE_15__ {int lowbits; } ;
struct TYPE_17__ {TYPE_1__ cur_ptr; int low_water_position; } ;
typedef TYPE_3__ cache_bin_t ;
typedef int cache_bin_sz_t ;


 size_t SC_NBINS ;
 int assert (int) ;
 int cache_bin_low_water_get (TYPE_3__*,size_t) ;
 int cache_bin_ncached_get (TYPE_3__*,size_t) ;
 int cache_bin_ncached_max_get (size_t) ;
 scalar_t__ nhbins ;
 int tcache_bin_flush_large (int *,TYPE_2__*,TYPE_3__*,size_t,int) ;
 int tcache_bin_flush_small (int *,TYPE_2__*,TYPE_3__*,size_t,int) ;
 TYPE_3__* tcache_large_bin_get (TYPE_2__*,size_t) ;
 TYPE_3__* tcache_small_bin_get (TYPE_2__*,size_t) ;

void
tcache_event_hard(tsd_t *tsd, tcache_t *tcache) {
 szind_t binind = tcache->next_gc_bin;
 cache_bin_t *tbin;
 bool is_small;
 if (binind < SC_NBINS) {
  tbin = tcache_small_bin_get(tcache, binind);
  is_small = 1;
 } else {
  tbin = tcache_large_bin_get(tcache, binind);
  is_small = 0;
 }

 cache_bin_sz_t low_water = cache_bin_low_water_get(tbin, binind);
 cache_bin_sz_t ncached = cache_bin_ncached_get(tbin, binind);
 if (low_water > 0) {



  if (is_small) {
   assert(!tcache->bin_refilled[binind]);
   tcache_bin_flush_small(tsd, tcache, tbin, binind,
       ncached - low_water + (low_water >> 2));




   if ((cache_bin_ncached_max_get(binind) >>
        (tcache->lg_fill_div[binind] + 1)) >= 1) {
    tcache->lg_fill_div[binind]++;
   }
  } else {
   tcache_bin_flush_large(tsd, tcache, tbin, binind,
        ncached - low_water + (low_water >> 2));
  }
 } else if (is_small && tcache->bin_refilled[binind]) {
  assert(low_water == 0);




  if (tcache->lg_fill_div[binind] > 1) {
   tcache->lg_fill_div[binind]--;
  }
  tcache->bin_refilled[binind] = 0;
 }
 tbin->low_water_position = tbin->cur_ptr.lowbits;

 tcache->next_gc_bin++;
 if (tcache->next_gc_bin == nhbins) {
  tcache->next_gc_bin = 0;
 }
}
