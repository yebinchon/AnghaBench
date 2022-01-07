
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 scalar_t__ config_prof ;
 int malloc_mutex_prefork (int *,int *) ;
 int next_thr_uid_mtx ;
 scalar_t__ opt_prof ;
 int prof_active_mtx ;
 int prof_dump_filename_mtx ;
 int prof_gdump_mtx ;
 int prof_thread_active_init_mtx ;

void
prof_prefork1(tsdn_t *tsdn) {
 if (config_prof && opt_prof) {
  malloc_mutex_prefork(tsdn, &prof_active_mtx);
  malloc_mutex_prefork(tsdn, &prof_dump_filename_mtx);
  malloc_mutex_prefork(tsdn, &prof_gdump_mtx);
  malloc_mutex_prefork(tsdn, &next_thr_uid_mtx);
  malloc_mutex_prefork(tsdn, &prof_thread_active_init_mtx);
 }
}
