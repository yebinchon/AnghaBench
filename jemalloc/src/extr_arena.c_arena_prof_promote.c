
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int szind_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;


 size_t SC_LARGE_MINCLASS ;
 size_t SC_SMALL_MAXCLASS ;
 int assert (int) ;
 int cassert (int ) ;
 scalar_t__ config_opt_safety_checks ;
 int config_prof ;
 int extent_szind_set (int *,int ) ;
 int extents_rtree ;
 size_t isalloc (int *,void*) ;
 int prof_idump_rollback (int *,size_t) ;
 int * rtree_extent_read (int *,int *,int *,uintptr_t,int) ;
 int rtree_szind_slab_update (int *,int *,int *,uintptr_t,int ,int) ;
 int safety_check_set_redzone (void*,size_t,size_t) ;
 int sz_size2index (size_t) ;
 int * tsdn_rtree_ctx (int *,int *) ;

void
arena_prof_promote(tsdn_t *tsdn, void *ptr, size_t usize) {
 cassert(config_prof);
 assert(ptr != ((void*)0));
 assert(isalloc(tsdn, ptr) == SC_LARGE_MINCLASS);
 assert(usize <= SC_SMALL_MAXCLASS);

 if (config_opt_safety_checks) {
  safety_check_set_redzone(ptr, usize, SC_LARGE_MINCLASS);
 }

 rtree_ctx_t rtree_ctx_fallback;
 rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn, &rtree_ctx_fallback);

 extent_t *extent = rtree_extent_read(tsdn, &extents_rtree, rtree_ctx,
     (uintptr_t)ptr, 1);

 szind_t szind = sz_size2index(usize);
 extent_szind_set(extent, szind);
 rtree_szind_slab_update(tsdn, &extents_rtree, rtree_ctx, (uintptr_t)ptr,
     szind, 0);

 prof_idump_rollback(tsdn, usize);

 assert(isalloc(tsdn, ptr) == usize);
}
