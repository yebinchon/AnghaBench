
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;


 scalar_t__ SC_LARGE_MINCLASS ;
 int SC_NBINS ;
 int assert (int) ;
 int cassert (int ) ;
 int config_prof ;
 int extent_szind_set (int *,int ) ;
 int extents_rtree ;
 scalar_t__ isalloc (int *,void const*) ;
 int rtree_szind_slab_update (int *,int *,int *,uintptr_t,int ,int) ;
 int * tsdn_rtree_ctx (int *,int *) ;

__attribute__((used)) static size_t
arena_prof_demote(tsdn_t *tsdn, extent_t *extent, const void *ptr) {
 cassert(config_prof);
 assert(ptr != ((void*)0));

 extent_szind_set(extent, SC_NBINS);
 rtree_ctx_t rtree_ctx_fallback;
 rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn, &rtree_ctx_fallback);
 rtree_szind_slab_update(tsdn, &extents_rtree, rtree_ctx, (uintptr_t)ptr,
     SC_NBINS, 0);

 assert(isalloc(tsdn, ptr) == SC_LARGE_MINCLASS);

 return SC_LARGE_MINCLASS;
}
