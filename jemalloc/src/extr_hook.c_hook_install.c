
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int hooks_t ;


 void* hook_install_locked (int *) ;
 int hooks_mu ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int tsd_global_slow_inc (int *) ;

void *
hook_install(tsdn_t *tsdn, hooks_t *to_install) {
 malloc_mutex_lock(tsdn, &hooks_mu);
 void *ret = hook_install_locked(to_install);
 if (ret != ((void*)0)) {
  tsd_global_slow_inc(tsdn);
 }
 malloc_mutex_unlock(tsdn, &hooks_mu);
 return ret;
}
