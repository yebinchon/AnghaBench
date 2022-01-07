
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int prof_dump_filename_mtx ;
 char* prof_dump_prefix_get (int *) ;

__attribute__((used)) static bool
prof_dump_prefix_is_empty(tsdn_t *tsdn) {
 malloc_mutex_lock(tsdn, &prof_dump_filename_mtx);
 bool ret = (prof_dump_prefix_get(tsdn)[0] == '\0');
 malloc_mutex_unlock(tsdn, &prof_dump_filename_mtx);
 return ret;
}
