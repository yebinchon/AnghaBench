
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int tsdn_t ;
typedef int tsd_t ;
struct TYPE_5__ {void* e_addr; } ;
typedef TYPE_1__ extent_t ;
typedef int arena_t ;


 void* ALIGNMENT_ADDR2BASE (void*,size_t) ;
 int CACHELINE_CEILING (size_t) ;
 unsigned int LG_PAGE ;
 size_t PAGE ;
 int assert (int) ;
 scalar_t__ extent_addr_get (TYPE_1__*) ;
 scalar_t__ extent_base_get (TYPE_1__*) ;
 unsigned int lg_floor (int ) ;
 scalar_t__ prng_lg_range_u64 (int *,unsigned int) ;
 int * tsd_prng_statep_get (int *) ;
 int tsdn_null (int *) ;
 int * tsdn_tsd (int *) ;

__attribute__((used)) static void
extent_addr_randomize(tsdn_t *tsdn, arena_t *arena, extent_t *extent,
    size_t alignment) {
 assert(extent_base_get(extent) == extent_addr_get(extent));

 if (alignment < PAGE) {
  unsigned lg_range = LG_PAGE -
      lg_floor(CACHELINE_CEILING(alignment));
  size_t r;
  if (!tsdn_null(tsdn)) {
   tsd_t *tsd = tsdn_tsd(tsdn);
   r = (size_t)prng_lg_range_u64(
       tsd_prng_statep_get(tsd), lg_range);
  } else {
   uint64_t stack_value = (uint64_t)(uintptr_t)&r;
   r = (size_t)prng_lg_range_u64(&stack_value, lg_range);
  }
  uintptr_t random_offset = ((uintptr_t)r) << (LG_PAGE -
      lg_range);
  extent->e_addr = (void *)((uintptr_t)extent->e_addr +
      random_offset);
  assert(ALIGNMENT_ADDR2BASE(extent->e_addr, alignment) ==
      extent->e_addr);
 }
}
