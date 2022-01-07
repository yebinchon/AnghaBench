
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int prof_active ;
 int prof_active_assert () ;
 int prof_active_mtx ;

bool
prof_active_set(tsdn_t *tsdn, bool active) {
 bool prof_active_old;

 prof_active_assert();
 malloc_mutex_lock(tsdn, &prof_active_mtx);
 prof_active_old = prof_active;
 prof_active = active;
 malloc_mutex_unlock(tsdn, &prof_active_mtx);
 prof_active_assert();
 return prof_active_old;
}
