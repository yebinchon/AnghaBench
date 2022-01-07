
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 int PROF_DUMP_FILENAME_LEN ;
 int QUANTUM ;
 int assert (int ) ;
 int b0get () ;
 char* base_alloc (int *,int ,int,int ) ;
 int cassert (int ) ;
 int config_prof ;
 int ctl_mtx_assert_held (int *) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int prof_dump_filename_mtx ;
 char* prof_dump_prefix ;
 int strncpy (char*,char const*,int) ;

bool
prof_dump_prefix_set(tsdn_t *tsdn, const char *prefix) {
 cassert(config_prof);
 ctl_mtx_assert_held(tsdn);
 malloc_mutex_lock(tsdn, &prof_dump_filename_mtx);
 if (prof_dump_prefix == ((void*)0)) {
  malloc_mutex_unlock(tsdn, &prof_dump_filename_mtx);

  char *buffer = base_alloc(tsdn, b0get(), PROF_DUMP_FILENAME_LEN,
      QUANTUM);
  if (buffer == ((void*)0)) {
   return 1;
  }
  malloc_mutex_lock(tsdn, &prof_dump_filename_mtx);
  prof_dump_prefix = buffer;
 }
 assert(prof_dump_prefix != ((void*)0));

 strncpy(prof_dump_prefix, prefix, PROF_DUMP_FILENAME_LEN - 1);
 prof_dump_prefix[PROF_DUMP_FILENAME_LEN - 1] = '\0';
 malloc_mutex_unlock(tsdn, &prof_dump_filename_mtx);

 return 0;
}
