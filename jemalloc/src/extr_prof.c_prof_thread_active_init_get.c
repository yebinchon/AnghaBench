
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int prof_thread_active_init ;
 int prof_thread_active_init_mtx ;

bool
prof_thread_active_init_get(tsdn_t *tsdn) {
 bool active_init;

 malloc_mutex_lock(tsdn, &prof_thread_active_init_mtx);
 active_init = prof_thread_active_init;
 malloc_mutex_unlock(tsdn, &prof_thread_active_init_mtx);
 return active_init;
}
