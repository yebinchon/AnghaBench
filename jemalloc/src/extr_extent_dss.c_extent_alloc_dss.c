
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
typedef int arena_t ;


 size_t ALIGNMENT_CEILING (uintptr_t,size_t) ;
 int ATOMIC_ACQUIRE ;
 int ATOMIC_RELEASE ;
 int * EXTENT_HOOKS_INITIALIZER ;
 int EXTENT_NOT_HEAD ;
 size_t PAGE ;
 scalar_t__ PAGE_CEILING (uintptr_t) ;
 int SC_NSIZES ;
 int arena_extent_sn_next (int *) ;
 int arena_ind_get (int *) ;
 int assert (int) ;
 int atomic_load_b (int *,int ) ;
 int atomic_store_b (int *,int,int ) ;
 int atomic_store_p (int *,void*,int ) ;
 int cassert (int ) ;
 int dss_exhausted ;
 int dss_max ;
 int * extent_alloc (int *,int *) ;
 int extent_dalloc (int *,int *,int *) ;
 int extent_dalloc_gap (int *,int *,int *) ;
 int extent_dss_extending_finish () ;
 int extent_dss_extending_start () ;
 void* extent_dss_max_update (void*) ;
 void* extent_dss_sbrk (intptr_t) ;
 int extent_init (int *,int ,void*,size_t,size_t,int,int,int ,int,int,int,int ) ;
 scalar_t__ extent_purge_forced_wrapper (int *,int *,int **,int *,int ,size_t) ;
 int extent_state_active ;
 int have_dss ;
 int memset (void*,int ,size_t) ;
 int pages_decommit (void*,size_t) ;

void *
extent_alloc_dss(tsdn_t *tsdn, arena_t *arena, void *new_addr, size_t size,
    size_t alignment, bool *zero, bool *commit) {
 extent_t *gap;

 cassert(have_dss);
 assert(size > 0);
 assert(alignment == ALIGNMENT_CEILING(alignment, PAGE));





 if ((intptr_t)size < 0) {
  return ((void*)0);
 }

 gap = extent_alloc(tsdn, arena);
 if (gap == ((void*)0)) {
  return ((void*)0);
 }

 extent_dss_extending_start();
 if (!atomic_load_b(&dss_exhausted, ATOMIC_ACQUIRE)) {





  while (1) {
   void *max_cur = extent_dss_max_update(new_addr);
   if (max_cur == ((void*)0)) {
    goto label_oom;
   }






   void *gap_addr_page = (void *)(PAGE_CEILING(
       (uintptr_t)max_cur));
   void *ret = (void *)ALIGNMENT_CEILING(
       (uintptr_t)gap_addr_page, alignment);
   size_t gap_size_page = (uintptr_t)ret -
       (uintptr_t)gap_addr_page;
   if (gap_size_page != 0) {
    extent_init(gap, arena_ind_get(arena),
        gap_addr_page, gap_size_page, 0,
        SC_NSIZES, arena_extent_sn_next(arena),
        extent_state_active, 0, 1, 1,
        EXTENT_NOT_HEAD);
   }




   void *dss_next = (void *)((uintptr_t)ret + size);
   if ((uintptr_t)ret < (uintptr_t)max_cur ||
       (uintptr_t)dss_next < (uintptr_t)max_cur) {
    goto label_oom;
   }

   void *gap_addr_subpage = max_cur;
   size_t gap_size_subpage = (uintptr_t)ret -
       (uintptr_t)gap_addr_subpage;
   intptr_t incr = gap_size_subpage + size;

   assert((uintptr_t)max_cur + incr == (uintptr_t)ret +
       size);


   void *dss_prev = extent_dss_sbrk(incr);
   if (dss_prev == max_cur) {

    atomic_store_p(&dss_max, dss_next,
        ATOMIC_RELEASE);
    extent_dss_extending_finish();

    if (gap_size_page != 0) {
     extent_dalloc_gap(tsdn, arena, gap);
    } else {
     extent_dalloc(tsdn, arena, gap);
    }
    if (!*commit) {
     *commit = pages_decommit(ret, size);
    }
    if (*zero && *commit) {
     extent_hooks_t *extent_hooks =
         EXTENT_HOOKS_INITIALIZER;
     extent_t extent;

     extent_init(&extent,
         arena_ind_get(arena), ret, size,
         size, 0, SC_NSIZES,
         extent_state_active, 0, 1,
         1, EXTENT_NOT_HEAD);
     if (extent_purge_forced_wrapper(tsdn,
         arena, &extent_hooks, &extent, 0,
         size)) {
      memset(ret, 0, size);
     }
    }
    return ret;
   }




   if (dss_prev == (void *)-1) {

    atomic_store_b(&dss_exhausted, 1,
        ATOMIC_RELEASE);
    goto label_oom;
   }
  }
 }
label_oom:
 extent_dss_extending_finish();
 extent_dalloc(tsdn, arena, gap);
 return ((void*)0);
}
