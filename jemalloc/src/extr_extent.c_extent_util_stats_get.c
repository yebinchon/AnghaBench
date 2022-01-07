
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
struct TYPE_2__ {size_t nregs; } ;


 int assert (int) ;
 TYPE_1__* bin_infos ;
 size_t extent_nfree_get (int const*) ;
 size_t extent_size_get (int const*) ;
 int extent_slab_get (int const*) ;
 size_t extent_szind_get (int const*) ;
 size_t extent_usize_get (int const*) ;
 int * iealloc (int *,void const*) ;
 scalar_t__ unlikely (int ) ;

void
extent_util_stats_get(tsdn_t *tsdn, const void *ptr,
    size_t *nfree, size_t *nregs, size_t *size) {
 assert(ptr != ((void*)0) && nfree != ((void*)0) && nregs != ((void*)0) && size != ((void*)0));

 const extent_t *extent = iealloc(tsdn, ptr);
 if (unlikely(extent == ((void*)0))) {
  *nfree = *nregs = *size = 0;
  return;
 }

 *size = extent_size_get(extent);
 if (!extent_slab_get(extent)) {
  *nfree = 0;
  *nregs = 1;
 } else {
  *nfree = extent_nfree_get(extent);
  *nregs = bin_infos[extent_szind_get(extent)].nregs;
  assert(*nfree <= *nregs);
  assert(*nfree * extent_usize_get(extent) <= *size);
 }
}
