
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef scalar_t__ dss_prec_t ;
typedef int arena_t ;


 int assert (int) ;
 scalar_t__ dss_prec_primary ;
 scalar_t__ dss_prec_secondary ;
 void* extent_alloc_dss (int *,int *,void*,size_t,size_t,int*,int*) ;
 void* extent_alloc_mmap (void*,size_t,size_t,int*,int*) ;
 scalar_t__ have_dss ;

__attribute__((used)) static void *
extent_alloc_core(tsdn_t *tsdn, arena_t *arena, void *new_addr, size_t size,
    size_t alignment, bool *zero, bool *commit, dss_prec_t dss_prec) {
 void *ret;

 assert(size != 0);
 assert(alignment != 0);


 if (have_dss && dss_prec == dss_prec_primary && (ret =
     extent_alloc_dss(tsdn, arena, new_addr, size, alignment, zero,
     commit)) != ((void*)0)) {
  return ret;
 }

 if ((ret = extent_alloc_mmap(new_addr, size, alignment, zero, commit))
     != ((void*)0)) {
  return ret;
 }

 if (have_dss && dss_prec == dss_prec_secondary && (ret =
     extent_alloc_dss(tsdn, arena, new_addr, size, alignment, zero,
     commit)) != ((void*)0)) {
  return ret;
 }


 return ((void*)0);
}
