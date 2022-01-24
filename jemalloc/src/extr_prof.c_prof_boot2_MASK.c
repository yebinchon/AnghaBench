#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  malloc_mutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  CACHELINE ; 
 int PROF_NCTX_LOCKS ; 
 int PROF_NTDATA_LOCKS ; 
 int /*<<< orphan*/  WITNESS_RANK_PROF_ACTIVE ; 
 int /*<<< orphan*/  WITNESS_RANK_PROF_BT2GCTX ; 
 int /*<<< orphan*/  WITNESS_RANK_PROF_DUMP ; 
 int /*<<< orphan*/  WITNESS_RANK_PROF_DUMP_FILENAME ; 
 int /*<<< orphan*/  WITNESS_RANK_PROF_GCTX ; 
 int /*<<< orphan*/  WITNESS_RANK_PROF_GDUMP ; 
 int /*<<< orphan*/  WITNESS_RANK_PROF_NEXT_THR_UID ; 
 int /*<<< orphan*/  WITNESS_RANK_PROF_TDATA ; 
 int /*<<< orphan*/  WITNESS_RANK_PROF_TDATAS ; 
 int /*<<< orphan*/  WITNESS_RANK_PROF_THREAD_ACTIVE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bt2gctx_mtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/ * gctx_locks ; 
 int /*<<< orphan*/  lg_prof_sample ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  malloc_mutex_rank_exclusive ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ next_thr_uid ; 
 int /*<<< orphan*/  next_thr_uid_mtx ; 
 scalar_t__ opt_abort ; 
 int /*<<< orphan*/  opt_lg_prof_sample ; 
 scalar_t__ opt_prof ; 
 int /*<<< orphan*/  opt_prof_active ; 
 scalar_t__ opt_prof_final ; 
 int /*<<< orphan*/  opt_prof_gdump ; 
 char* opt_prof_prefix ; 
 int /*<<< orphan*/  opt_prof_thread_active_init ; 
 int /*<<< orphan*/  prof_active ; 
 int /*<<< orphan*/  prof_active_mtx ; 
 int prof_booted ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prof_dump_filename_mtx ; 
 int /*<<< orphan*/  prof_dump_mtx ; 
 int /*<<< orphan*/  prof_fdump ; 
 int /*<<< orphan*/  prof_gdump_mtx ; 
 int /*<<< orphan*/  prof_gdump_val ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prof_thread_active_init ; 
 int /*<<< orphan*/  prof_thread_active_init_mtx ; 
 int /*<<< orphan*/  prof_unwind_init_callback ; 
 int /*<<< orphan*/ * tdata_locks ; 
 int /*<<< orphan*/  tdatas_mtx ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

bool
FUNC11(tsd_t *tsd) {
	FUNC5(config_prof);

	if (opt_prof) {
		unsigned i;

		lg_prof_sample = opt_lg_prof_sample;

		prof_active = opt_prof_active;
		if (FUNC6(&prof_active_mtx, "prof_active",
		    WITNESS_RANK_PROF_ACTIVE, malloc_mutex_rank_exclusive)) {
			return true;
		}

		prof_gdump_val = opt_prof_gdump;
		if (FUNC6(&prof_gdump_mtx, "prof_gdump",
		    WITNESS_RANK_PROF_GDUMP, malloc_mutex_rank_exclusive)) {
			return true;
		}

		prof_thread_active_init = opt_prof_thread_active_init;
		if (FUNC6(&prof_thread_active_init_mtx,
		    "prof_thread_active_init",
		    WITNESS_RANK_PROF_THREAD_ACTIVE_INIT,
		    malloc_mutex_rank_exclusive)) {
			return true;
		}

		if (FUNC8(tsd)) {
			return true;
		}

		if (FUNC6(&bt2gctx_mtx, "prof_bt2gctx",
		    WITNESS_RANK_PROF_BT2GCTX, malloc_mutex_rank_exclusive)) {
			return true;
		}

		if (FUNC6(&tdatas_mtx, "prof_tdatas",
		    WITNESS_RANK_PROF_TDATAS, malloc_mutex_rank_exclusive)) {
			return true;
		}

		next_thr_uid = 0;
		if (FUNC6(&next_thr_uid_mtx, "prof_next_thr_uid",
		    WITNESS_RANK_PROF_NEXT_THR_UID, malloc_mutex_rank_exclusive)) {
			return true;
		}

		if (FUNC6(&prof_dump_filename_mtx, "prof_dump_filename",
		    WITNESS_RANK_PROF_DUMP_FILENAME, malloc_mutex_rank_exclusive)) {
			return true;
		}
		if (FUNC6(&prof_dump_mtx, "prof_dump",
		    WITNESS_RANK_PROF_DUMP, malloc_mutex_rank_exclusive)) {
			return true;
		}

		if (opt_prof_final && opt_prof_prefix[0] != '\0' &&
		    FUNC2(prof_fdump) != 0) {
			FUNC7("<jemalloc>: Error in atexit()\n");
			if (opt_abort) {
				FUNC1();
			}
		}

		if (FUNC9(tsd)) {
			return true;
		}

		gctx_locks = (malloc_mutex_t *)FUNC4(FUNC10(tsd),
		    FUNC3(), PROF_NCTX_LOCKS * sizeof(malloc_mutex_t),
		    CACHELINE);
		if (gctx_locks == NULL) {
			return true;
		}
		for (i = 0; i < PROF_NCTX_LOCKS; i++) {
			if (FUNC6(&gctx_locks[i], "prof_gctx",
			    WITNESS_RANK_PROF_GCTX,
			    malloc_mutex_rank_exclusive)) {
				return true;
			}
		}

		tdata_locks = (malloc_mutex_t *)FUNC4(FUNC10(tsd),
		    FUNC3(), PROF_NTDATA_LOCKS * sizeof(malloc_mutex_t),
		    CACHELINE);
		if (tdata_locks == NULL) {
			return true;
		}
		for (i = 0; i < PROF_NTDATA_LOCKS; i++) {
			if (FUNC6(&tdata_locks[i], "prof_tdata",
			    WITNESS_RANK_PROF_TDATA,
			    malloc_mutex_rank_exclusive)) {
				return true;
			}
		}
#ifdef JEMALLOC_PROF_LIBGCC
		/*
		 * Cause the backtracing machinery to allocate its internal
		 * state before enabling profiling.
		 */
		_Unwind_Backtrace(prof_unwind_init_callback, NULL);
#endif
	}
	prof_booted = true;

	return false;
}