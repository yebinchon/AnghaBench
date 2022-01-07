
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int seq_hooks_t ;


 size_t HOOK_MAX ;
 int assert (int) ;
 scalar_t__ config_debug ;
 int hook_remove_locked (int *) ;
 int * hooks ;
 int hooks_mu ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int tsd_global_slow_dec (int *) ;

void
hook_remove(tsdn_t *tsdn, void *opaque) {
 if (config_debug) {
  char *hooks_begin = (char *)&hooks[0];
  char *hooks_end = (char *)&hooks[HOOK_MAX];
  char *hook = (char *)opaque;
  assert(hooks_begin <= hook && hook < hooks_end
      && (hook - hooks_begin) % sizeof(seq_hooks_t) == 0);
 }
 malloc_mutex_lock(tsdn, &hooks_mu);
 hook_remove_locked((seq_hooks_t *)opaque);
 tsd_global_slow_dec(tsdn);
 malloc_mutex_unlock(tsdn, &hooks_mu);
}
