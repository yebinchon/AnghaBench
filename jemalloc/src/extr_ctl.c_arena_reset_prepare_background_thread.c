
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_3__ {scalar_t__ state; int mtx; } ;
typedef TYPE_1__ background_thread_info_t ;


 int assert (int) ;
 scalar_t__ background_thread_enabled () ;
 TYPE_1__* background_thread_info_get (unsigned int) ;
 int background_thread_lock ;
 scalar_t__ background_thread_paused ;
 scalar_t__ background_thread_started ;
 scalar_t__ have_background_thread ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
arena_reset_prepare_background_thread(tsd_t *tsd, unsigned arena_ind) {

 if (have_background_thread) {
  malloc_mutex_lock(tsd_tsdn(tsd), &background_thread_lock);
  if (background_thread_enabled()) {
   background_thread_info_t *info =
       background_thread_info_get(arena_ind);
   assert(info->state == background_thread_started);
   malloc_mutex_lock(tsd_tsdn(tsd), &info->mtx);
   info->state = background_thread_paused;
   malloc_mutex_unlock(tsd_tsdn(tsd), &info->mtx);
  }
 }
}
