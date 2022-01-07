
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int tsdn_t ;
typedef int cache_bin_sz_t ;
struct TYPE_4__ {unsigned int stack_size; } ;
typedef TYPE_1__ cache_bin_info_t ;
struct TYPE_5__ {int nregs; } ;


 int CACHELINE ;
 unsigned int SC_NBINS ;
 int SC_SMALL_MAXCLASS ;
 int TCACHE_NSLOTS_LARGE ;
 int TCACHE_NSLOTS_SMALL_MAX ;
 int TCACHE_NSLOTS_SMALL_MIN ;
 int WITNESS_RANK_TCACHES ;
 int ZU (int) ;
 int assert (int) ;
 int b0get () ;
 scalar_t__ base_alloc (int *,int ,int,int ) ;
 TYPE_3__* bin_infos ;
 scalar_t__ malloc_mutex_init (int *,char*,int ,int ) ;
 int malloc_mutex_rank_exclusive ;
 int nhbins ;
 int opt_lg_tcache_max ;
 int sz_size2index (int) ;
 TYPE_1__* tcache_bin_info ;
 int tcache_maxclass ;
 int tcaches_mtx ;
 scalar_t__ total_stack_bytes ;
 scalar_t__ total_stack_padding ;

bool
tcache_boot(tsdn_t *tsdn) {

 if (opt_lg_tcache_max < 0 || (ZU(1) << opt_lg_tcache_max) <
     SC_SMALL_MAXCLASS) {
  tcache_maxclass = SC_SMALL_MAXCLASS;
 } else {
  tcache_maxclass = (ZU(1) << opt_lg_tcache_max);
 }

 if (malloc_mutex_init(&tcaches_mtx, "tcaches", WITNESS_RANK_TCACHES,
     malloc_mutex_rank_exclusive)) {
  return 1;
 }

 nhbins = sz_size2index(tcache_maxclass) + 1;


 tcache_bin_info = (cache_bin_info_t *)base_alloc(tsdn, b0get(), nhbins
     * sizeof(cache_bin_info_t), CACHELINE);
 if (tcache_bin_info == ((void*)0)) {
  return 1;
 }
 unsigned i, ncached_max;
 total_stack_bytes = 0;
 for (i = 0; i < SC_NBINS; i++) {
  if ((bin_infos[i].nregs << 1) <= TCACHE_NSLOTS_SMALL_MIN) {
   ncached_max = TCACHE_NSLOTS_SMALL_MIN;
  } else if ((bin_infos[i].nregs << 1) <=
      TCACHE_NSLOTS_SMALL_MAX) {
   ncached_max = bin_infos[i].nregs << 1;
  } else {
   ncached_max = TCACHE_NSLOTS_SMALL_MAX;
  }
  unsigned stack_size = ncached_max * sizeof(void *);
  assert(stack_size < ((uint64_t)1 <<
      (sizeof(cache_bin_sz_t) * 8)));
  tcache_bin_info[i].stack_size = stack_size;
  total_stack_bytes += stack_size;
 }
 for (; i < nhbins; i++) {
  unsigned stack_size = TCACHE_NSLOTS_LARGE * sizeof(void *);
  tcache_bin_info[i].stack_size = stack_size;
  total_stack_bytes += stack_size;
 }
 total_stack_bytes += total_stack_padding;

 return 0;
}
