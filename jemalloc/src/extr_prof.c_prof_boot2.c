
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int malloc_mutex_t ;


 int CACHELINE ;
 int PROF_NCTX_LOCKS ;
 int PROF_NTDATA_LOCKS ;
 int WITNESS_RANK_PROF_ACTIVE ;
 int WITNESS_RANK_PROF_BT2GCTX ;
 int WITNESS_RANK_PROF_DUMP ;
 int WITNESS_RANK_PROF_DUMP_FILENAME ;
 int WITNESS_RANK_PROF_GCTX ;
 int WITNESS_RANK_PROF_GDUMP ;
 int WITNESS_RANK_PROF_NEXT_THR_UID ;
 int WITNESS_RANK_PROF_TDATA ;
 int WITNESS_RANK_PROF_TDATAS ;
 int WITNESS_RANK_PROF_THREAD_ACTIVE_INIT ;
 int _Unwind_Backtrace (int ,int *) ;
 int abort () ;
 scalar_t__ atexit (int ) ;
 int b0get () ;
 scalar_t__ base_alloc (int ,int ,int,int ) ;
 int bt2gctx_mtx ;
 int cassert (int ) ;
 int config_prof ;
 int * gctx_locks ;
 int lg_prof_sample ;
 scalar_t__ malloc_mutex_init (int *,char*,int ,int ) ;
 int malloc_mutex_rank_exclusive ;
 int malloc_write (char*) ;
 scalar_t__ next_thr_uid ;
 int next_thr_uid_mtx ;
 scalar_t__ opt_abort ;
 int opt_lg_prof_sample ;
 scalar_t__ opt_prof ;
 int opt_prof_active ;
 scalar_t__ opt_prof_final ;
 int opt_prof_gdump ;
 char* opt_prof_prefix ;
 int opt_prof_thread_active_init ;
 int prof_active ;
 int prof_active_mtx ;
 int prof_booted ;
 scalar_t__ prof_data_init (int *) ;
 int prof_dump_filename_mtx ;
 int prof_dump_mtx ;
 int prof_fdump ;
 int prof_gdump_mtx ;
 int prof_gdump_val ;
 scalar_t__ prof_log_init (int *) ;
 int prof_thread_active_init ;
 int prof_thread_active_init_mtx ;
 int prof_unwind_init_callback ;
 int * tdata_locks ;
 int tdatas_mtx ;
 int tsd_tsdn (int *) ;

bool
prof_boot2(tsd_t *tsd) {
 cassert(config_prof);

 if (opt_prof) {
  unsigned i;

  lg_prof_sample = opt_lg_prof_sample;

  prof_active = opt_prof_active;
  if (malloc_mutex_init(&prof_active_mtx, "prof_active",
      WITNESS_RANK_PROF_ACTIVE, malloc_mutex_rank_exclusive)) {
   return 1;
  }

  prof_gdump_val = opt_prof_gdump;
  if (malloc_mutex_init(&prof_gdump_mtx, "prof_gdump",
      WITNESS_RANK_PROF_GDUMP, malloc_mutex_rank_exclusive)) {
   return 1;
  }

  prof_thread_active_init = opt_prof_thread_active_init;
  if (malloc_mutex_init(&prof_thread_active_init_mtx,
      "prof_thread_active_init",
      WITNESS_RANK_PROF_THREAD_ACTIVE_INIT,
      malloc_mutex_rank_exclusive)) {
   return 1;
  }

  if (prof_data_init(tsd)) {
   return 1;
  }

  if (malloc_mutex_init(&bt2gctx_mtx, "prof_bt2gctx",
      WITNESS_RANK_PROF_BT2GCTX, malloc_mutex_rank_exclusive)) {
   return 1;
  }

  if (malloc_mutex_init(&tdatas_mtx, "prof_tdatas",
      WITNESS_RANK_PROF_TDATAS, malloc_mutex_rank_exclusive)) {
   return 1;
  }

  next_thr_uid = 0;
  if (malloc_mutex_init(&next_thr_uid_mtx, "prof_next_thr_uid",
      WITNESS_RANK_PROF_NEXT_THR_UID, malloc_mutex_rank_exclusive)) {
   return 1;
  }

  if (malloc_mutex_init(&prof_dump_filename_mtx, "prof_dump_filename",
      WITNESS_RANK_PROF_DUMP_FILENAME, malloc_mutex_rank_exclusive)) {
   return 1;
  }
  if (malloc_mutex_init(&prof_dump_mtx, "prof_dump",
      WITNESS_RANK_PROF_DUMP, malloc_mutex_rank_exclusive)) {
   return 1;
  }

  if (opt_prof_final && opt_prof_prefix[0] != '\0' &&
      atexit(prof_fdump) != 0) {
   malloc_write("<jemalloc>: Error in atexit()\n");
   if (opt_abort) {
    abort();
   }
  }

  if (prof_log_init(tsd)) {
   return 1;
  }

  gctx_locks = (malloc_mutex_t *)base_alloc(tsd_tsdn(tsd),
      b0get(), PROF_NCTX_LOCKS * sizeof(malloc_mutex_t),
      CACHELINE);
  if (gctx_locks == ((void*)0)) {
   return 1;
  }
  for (i = 0; i < PROF_NCTX_LOCKS; i++) {
   if (malloc_mutex_init(&gctx_locks[i], "prof_gctx",
       WITNESS_RANK_PROF_GCTX,
       malloc_mutex_rank_exclusive)) {
    return 1;
   }
  }

  tdata_locks = (malloc_mutex_t *)base_alloc(tsd_tsdn(tsd),
      b0get(), PROF_NTDATA_LOCKS * sizeof(malloc_mutex_t),
      CACHELINE);
  if (tdata_locks == ((void*)0)) {
   return 1;
  }
  for (i = 0; i < PROF_NTDATA_LOCKS; i++) {
   if (malloc_mutex_init(&tdata_locks[i], "prof_tdata",
       WITNESS_RANK_PROF_TDATA,
       malloc_mutex_rank_exclusive)) {
    return 1;
   }
  }







 }
 prof_booted = 1;

 return 0;
}
