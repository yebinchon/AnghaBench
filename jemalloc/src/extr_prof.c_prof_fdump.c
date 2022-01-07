
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int DUMP_FILENAME_BUFSIZE ;
 int VSEQ_INVALID ;
 int assert (int) ;
 int cassert (int ) ;
 int config_prof ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int opt_prof_final ;
 int opt_prof_leak ;
 int prof_booted ;
 int prof_dump (int *,int,char*,int ) ;
 int prof_dump_filename (int *,char*,float,int ) ;
 int prof_dump_filename_mtx ;
 int prof_dump_prefix_is_empty (int ) ;
 int * tsd_fetch () ;
 scalar_t__ tsd_reentrancy_level_get (int *) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
prof_fdump(void) {
 tsd_t *tsd;
 char filename[DUMP_FILENAME_BUFSIZE];

 cassert(config_prof);
 assert(opt_prof_final);

 if (!prof_booted) {
  return;
 }
 tsd = tsd_fetch();
 assert(tsd_reentrancy_level_get(tsd) == 0);
 assert(!prof_dump_prefix_is_empty(tsd_tsdn(tsd)));

 malloc_mutex_lock(tsd_tsdn(tsd), &prof_dump_filename_mtx);
 prof_dump_filename(tsd, filename, 'f', VSEQ_INVALID);
 malloc_mutex_unlock(tsd_tsdn(tsd), &prof_dump_filename_mtx);
 prof_dump(tsd, 0, filename, opt_prof_leak);
}
