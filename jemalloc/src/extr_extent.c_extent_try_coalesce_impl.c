
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
struct TYPE_5__ {scalar_t__ delay_coalesce; } ;
typedef TYPE_1__ eset_t ;
typedef int arena_t ;


 int extent_before_get (int *) ;
 int extent_can_coalesce (int *,TYPE_1__*,int *,int *) ;
 int extent_coalesce (int *,int *,int **,TYPE_1__*,int *,int *,int,int) ;
 int * extent_lock_from_addr (int *,int *,int ,int) ;
 int extent_past_get (int *) ;
 int extent_unlock (int *,int *) ;

__attribute__((used)) static extent_t *
extent_try_coalesce_impl(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, rtree_ctx_t *rtree_ctx, eset_t *eset,
    extent_t *extent, bool *coalesced, bool growing_retained,
    bool inactive_only) {
 bool again;
 do {
  again = 0;


  extent_t *next = extent_lock_from_addr(tsdn, rtree_ctx,
      extent_past_get(extent), inactive_only);
  if (next != ((void*)0)) {





   bool can_coalesce = extent_can_coalesce(arena, eset,
       extent, next);

   extent_unlock(tsdn, next);

   if (can_coalesce && !extent_coalesce(tsdn, arena,
       r_extent_hooks, eset, extent, next, 1,
       growing_retained)) {
    if (eset->delay_coalesce) {

     *coalesced = 1;
     return extent;
    }
    again = 1;
   }
  }


  extent_t *prev = extent_lock_from_addr(tsdn, rtree_ctx,
      extent_before_get(extent), inactive_only);
  if (prev != ((void*)0)) {
   bool can_coalesce = extent_can_coalesce(arena, eset,
       extent, prev);
   extent_unlock(tsdn, prev);

   if (can_coalesce && !extent_coalesce(tsdn, arena,
       r_extent_hooks, eset, extent, prev, 0,
       growing_retained)) {
    extent = prev;
    if (eset->delay_coalesce) {

     *coalesced = 1;
     return extent;
    }
    again = 1;
   }
  }
 } while (again);

 if (eset->delay_coalesce) {
  *coalesced = 0;
 }
 return extent;
}
