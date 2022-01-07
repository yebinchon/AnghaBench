
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;


 size_t SC_LARGE_MAXCLASS ;
 size_t SC_LARGE_MINCLASS ;
 int arena_decay_tick (int *,int ) ;
 int arena_get_from_extent (int *) ;
 int assert (int) ;
 size_t extent_usize_get (int *) ;
 scalar_t__ large_ralloc_no_move_expand (int *,int *,size_t,int) ;
 int large_ralloc_no_move_shrink (int *,int *,size_t) ;

bool
large_ralloc_no_move(tsdn_t *tsdn, extent_t *extent, size_t usize_min,
    size_t usize_max, bool zero) {
 size_t oldusize = extent_usize_get(extent);


 assert(usize_min > 0 && usize_max <= SC_LARGE_MAXCLASS);

 assert(oldusize >= SC_LARGE_MINCLASS
     && usize_max >= SC_LARGE_MINCLASS);

 if (usize_max > oldusize) {

  if (!large_ralloc_no_move_expand(tsdn, extent, usize_max,
      zero)) {
   arena_decay_tick(tsdn, arena_get_from_extent(extent));
   return 0;
  }

  if (usize_min < usize_max && usize_min > oldusize &&
      large_ralloc_no_move_expand(tsdn, extent, usize_min,
      zero)) {
   arena_decay_tick(tsdn, arena_get_from_extent(extent));
   return 0;
  }
 }





 if (oldusize >= usize_min && oldusize <= usize_max) {
  arena_decay_tick(tsdn, arena_get_from_extent(extent));
  return 0;
 }


 if (oldusize > usize_max) {
  if (!large_ralloc_no_move_shrink(tsdn, extent, usize_max)) {
   arena_decay_tick(tsdn, arena_get_from_extent(extent));
   return 0;
  }
 }
 return 1;
}
