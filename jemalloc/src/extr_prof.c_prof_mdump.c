
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int DUMP_FILENAME_BUFSIZE ;
 int assert (int) ;
 int cassert (int ) ;
 int config_prof ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int opt_prof ;
 int prof_booted ;
 int prof_dump (int *,int,char const*,int) ;
 int prof_dump_filename (int *,char*,char,int ) ;
 int prof_dump_filename_mtx ;
 int prof_dump_mseq ;
 char* prof_dump_prefix_get (int ) ;
 scalar_t__ tsd_reentrancy_level_get (int *) ;
 int tsd_tsdn (int *) ;

bool
prof_mdump(tsd_t *tsd, const char *filename) {
 cassert(config_prof);
 assert(tsd_reentrancy_level_get(tsd) == 0);

 if (!opt_prof || !prof_booted) {
  return 1;
 }
 char filename_buf[DUMP_FILENAME_BUFSIZE];
 if (filename == ((void*)0)) {

  malloc_mutex_lock(tsd_tsdn(tsd), &prof_dump_filename_mtx);
  if (prof_dump_prefix_get(tsd_tsdn(tsd))[0] == '\0') {
   malloc_mutex_unlock(tsd_tsdn(tsd), &prof_dump_filename_mtx);
   return 1;
  }
  prof_dump_filename(tsd, filename_buf, 'm', prof_dump_mseq);
  prof_dump_mseq++;
  malloc_mutex_unlock(tsd_tsdn(tsd), &prof_dump_filename_mtx);
  filename = filename_buf;
 }
 return prof_dump(tsd, 1, filename, 0);
}
