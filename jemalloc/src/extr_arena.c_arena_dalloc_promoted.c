
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int tcache_t ;
typedef int extent_t ;


 size_t SC_LARGE_MINCLASS ;
 size_t arena_prof_demote (int *,int *,void*) ;
 int assert (int) ;
 int cassert (int ) ;
 scalar_t__ config_opt_safety_checks ;
 int config_prof ;
 size_t extent_usize_get (int *) ;
 int * iealloc (int *,void*) ;
 int large_dalloc (int *,int *) ;
 int opt_prof ;
 int safety_check_verify_redzone (void*,size_t,size_t) ;
 int sz_size2index (size_t) ;
 int tcache_dalloc_large (int ,int *,void*,int ,int) ;
 size_t tcache_maxclass ;
 int tsdn_tsd (int *) ;

void
arena_dalloc_promoted(tsdn_t *tsdn, void *ptr, tcache_t *tcache,
    bool slow_path) {
 cassert(config_prof);
 assert(opt_prof);

 extent_t *extent = iealloc(tsdn, ptr);
 size_t usize = extent_usize_get(extent);
 size_t bumped_usize = arena_prof_demote(tsdn, extent, ptr);
 if (config_opt_safety_checks && usize < SC_LARGE_MINCLASS) {




  assert(bumped_usize == SC_LARGE_MINCLASS);
  safety_check_verify_redzone(ptr, usize, bumped_usize);
 }
 if (bumped_usize <= tcache_maxclass && tcache != ((void*)0)) {
  tcache_dalloc_large(tsdn_tsd(tsdn), tcache, ptr,
      sz_size2index(bumped_usize), slow_path);
 } else {
  large_dalloc(tsdn, extent);
 }
}
