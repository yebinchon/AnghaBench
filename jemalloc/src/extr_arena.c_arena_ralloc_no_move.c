
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
typedef int arena_t ;
struct TYPE_2__ {size_t reg_size; } ;


 size_t SC_LARGE_MAXCLASS ;
 size_t SC_LARGE_MINCLASS ;
 size_t SC_SMALL_MAXCLASS ;
 int arena_decay_tick (int *,int *) ;
 int * arena_get_from_extent (int *) ;
 int assert (int) ;
 TYPE_1__* bin_infos ;
 size_t extent_usize_get (int *) ;
 int * iealloc (int *,void*) ;
 int large_ralloc_no_move (int *,int *,size_t,size_t,int) ;
 scalar_t__ likely (int) ;
 size_t sz_s2u (size_t) ;
 size_t sz_size2index (size_t) ;
 scalar_t__ unlikely (int) ;

bool
arena_ralloc_no_move(tsdn_t *tsdn, void *ptr, size_t oldsize, size_t size,
    size_t extra, bool zero, size_t *newsize) {
 bool ret;

 assert(extra == 0 || size + extra <= SC_LARGE_MAXCLASS);

 extent_t *extent = iealloc(tsdn, ptr);
 if (unlikely(size > SC_LARGE_MAXCLASS)) {
  ret = 1;
  goto done;
 }

 size_t usize_min = sz_s2u(size);
 size_t usize_max = sz_s2u(size + extra);
 if (likely(oldsize <= SC_SMALL_MAXCLASS && usize_min
     <= SC_SMALL_MAXCLASS)) {




  assert(bin_infos[sz_size2index(oldsize)].reg_size ==
      oldsize);
  if ((usize_max > SC_SMALL_MAXCLASS
      || sz_size2index(usize_max) != sz_size2index(oldsize))
      && (size > oldsize || usize_max < oldsize)) {
   ret = 1;
   goto done;
  }

  arena_t *arena = arena_get_from_extent(extent);
  arena_decay_tick(tsdn, arena);
  ret = 0;
 } else if (oldsize >= SC_LARGE_MINCLASS
     && usize_max >= SC_LARGE_MINCLASS) {
  ret = large_ralloc_no_move(tsdn, extent, usize_min, usize_max,
      zero);
 } else {
  ret = 1;
 }
done:
 assert(extent == iealloc(tsdn, ptr));
 *newsize = extent_usize_get(extent);

 return ret;
}
