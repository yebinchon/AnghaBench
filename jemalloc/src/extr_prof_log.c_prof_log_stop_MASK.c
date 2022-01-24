#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  tsd_t ;
struct prof_emitter_cb_arg_s {int fd; int ret; } ;
typedef  int /*<<< orphan*/  emitter_t ;
struct TYPE_4__ {char* member_2; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; struct prof_emitter_cb_arg_s* member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ buf_writer_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  PROF_LOG_STOP_BUFSIZE ; 
 int /*<<< orphan*/  TSDN_NULL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  buffered_write_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  emitter_output_json_compact ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * log_alloc_first ; 
 int /*<<< orphan*/ * log_alloc_last ; 
 int /*<<< orphan*/ * log_bt_first ; 
 scalar_t__ log_bt_index ; 
 int /*<<< orphan*/ * log_bt_last ; 
 int /*<<< orphan*/  log_bt_node_set ; 
 int /*<<< orphan*/  log_filename ; 
 int /*<<< orphan*/  log_mtx ; 
 int log_tables_initialized ; 
 int /*<<< orphan*/ * log_thr_first ; 
 scalar_t__ log_thr_index ; 
 int /*<<< orphan*/ * log_thr_last ; 
 int /*<<< orphan*/  log_thr_node_set ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ opt_abort ; 
 int /*<<< orphan*/  opt_prof ; 
 int /*<<< orphan*/  prof_booted ; 
 int /*<<< orphan*/  prof_emitter_write_cb ; 
 scalar_t__ prof_log_dummy ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ prof_logging_state ; 
 scalar_t__ prof_logging_state_dumping ; 
 scalar_t__ prof_logging_state_started ; 
 scalar_t__ prof_logging_state_stopped ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 

bool
FUNC20(tsdn_t *tsdn) {
	if (!opt_prof || !prof_booted) {
		return true;
	}

	tsd_t *tsd = FUNC19(tsdn);
	FUNC11(tsdn, &log_mtx);

	if (prof_logging_state != prof_logging_state_started) {
		FUNC12(tsdn, &log_mtx);
		return true;
	}

	/*
	 * Set the state to dumping. We'll set it to stopped when we're done.
	 * Since other threads won't be able to start/stop/log when the state is
	 * dumping, we don't have to hold the lock during the whole method.
	 */
	prof_logging_state = prof_logging_state_dumping;
	FUNC12(tsdn, &log_mtx);


	emitter_t emitter;

	/* Create a file. */

	int fd;
#ifdef JEMALLOC_JET
	if (prof_log_dummy) {
		fd = 0;
	} else {
		fd = creat(log_filename, 0644);
	}
#else
	fd = FUNC5(log_filename, 0644);
#endif

	if (fd == -1) {
		FUNC13("<jemalloc>: creat() for log file \"%s\" "
			      " failed with %d\n", log_filename, errno);
		if (opt_abort) {
			FUNC0();
		}
		return true;
	}

	struct prof_emitter_cb_arg_s arg;
	arg.fd = fd;

	char *prof_log_stop_buf = (char *)FUNC9(tsdn,
	    PROF_LOG_STOP_BUFSIZE, FUNC18(PROF_LOG_STOP_BUFSIZE),
	    false, NULL, true, FUNC1(TSDN_NULL, 0, true), true);
	buf_writer_arg_t prof_log_stop_buf_arg = {prof_emitter_write_cb, &arg,
	    prof_log_stop_buf, PROF_LOG_STOP_BUFSIZE - 1, 0};

	/* Emit to json. */
	FUNC8(&emitter, emitter_output_json_compact,
	    buffered_write_cb, &prof_log_stop_buf_arg);

	FUNC6(&emitter);
	FUNC15(&emitter);
	FUNC16(tsd, &emitter);
	FUNC17(tsd, &emitter);
	FUNC14(tsd, &emitter);
	FUNC7(&emitter);

	FUNC2(&prof_log_stop_buf_arg);
	FUNC10(tsdn, prof_log_stop_buf, NULL, NULL, true, true);

	/* Reset global state. */
	if (log_tables_initialized) {
		FUNC3(tsd, &log_bt_node_set);
		FUNC3(tsd, &log_thr_node_set);
	}
	log_tables_initialized = false;
	log_bt_index = 0;
	log_thr_index = 0;
	log_bt_first = NULL;
	log_bt_last = NULL;
	log_thr_first = NULL;
	log_thr_last = NULL;
	log_alloc_first = NULL;
	log_alloc_last = NULL;

	FUNC11(tsdn, &log_mtx);
	prof_logging_state = prof_logging_state_stopped;
	FUNC12(tsdn, &log_mtx);

#ifdef JEMALLOC_JET
	if (prof_log_dummy) {
		return false;
	}
#endif
	return FUNC4(fd) || arg.ret == -1;
}