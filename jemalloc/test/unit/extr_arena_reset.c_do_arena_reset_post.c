
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_2__ {int mtx; } ;


 int assert_zu_eq (int ,int ,char*) ;
 TYPE_1__* background_thread_info_get (unsigned int) ;
 int free (void**) ;
 scalar_t__ have_background_thread ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int * tsdn_fetch () ;
 int vsalloc (int *,void*) ;

__attribute__((used)) static void
do_arena_reset_post(void **ptrs, unsigned nptrs, unsigned arena_ind) {
 tsdn_t *tsdn;
 unsigned i;

 tsdn = tsdn_fetch();

 if (have_background_thread) {
  malloc_mutex_lock(tsdn,
      &background_thread_info_get(arena_ind)->mtx);
 }

 for (i = 0; i < nptrs; i++) {
  assert_zu_eq(vsalloc(tsdn, ptrs[i]), 0,
      "Allocation should no longer exist");
 }
 if (have_background_thread) {
  malloc_mutex_unlock(tsdn,
      &background_thread_info_get(arena_ind)->mtx);
 }

 free(ptrs);
}
