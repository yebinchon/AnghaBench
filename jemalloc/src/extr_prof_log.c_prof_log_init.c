
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int PROF_CKH_MINITEMS ;
 int WITNESS_RANK_PROF_LOG ;
 int abort () ;
 scalar_t__ atexit (int ) ;
 scalar_t__ ckh_new (int *,int *,int ,int ,int ) ;
 int log_bt_node_set ;
 int log_mtx ;
 int log_tables_initialized ;
 int log_thr_node_set ;
 scalar_t__ malloc_mutex_init (int *,char*,int ,int ) ;
 int malloc_mutex_rank_exclusive ;
 int malloc_write (char*) ;
 scalar_t__ opt_abort ;
 scalar_t__ opt_prof_log ;
 int prof_bt_node_hash ;
 int prof_bt_node_keycomp ;
 int prof_log_start (int ,int *) ;
 int prof_log_stop_final ;
 int prof_thr_node_hash ;
 int prof_thr_node_keycomp ;
 int tsd_tsdn (int *) ;

bool prof_log_init(tsd_t *tsd) {
 if (opt_prof_log) {
  prof_log_start(tsd_tsdn(tsd), ((void*)0));
 }

 if (atexit(prof_log_stop_final) != 0) {
  malloc_write("<jemalloc>: Error in atexit() "
        "for logging\n");
  if (opt_abort) {
   abort();
  }
 }

 if (malloc_mutex_init(&log_mtx, "prof_log",
     WITNESS_RANK_PROF_LOG, malloc_mutex_rank_exclusive)) {
  return 1;
 }

 if (ckh_new(tsd, &log_bt_node_set, PROF_CKH_MINITEMS,
     prof_bt_node_hash, prof_bt_node_keycomp)) {
  return 1;
 }

 if (ckh_new(tsd, &log_thr_node_set, PROF_CKH_MINITEMS,
     prof_thr_node_hash, prof_thr_node_keycomp)) {
  return 1;
 }

 log_tables_initialized = 1;
 return 0;
}
