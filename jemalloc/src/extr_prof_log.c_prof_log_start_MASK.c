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
typedef  int /*<<< orphan*/  tsdn_t ;

/* Variables and functions */
 scalar_t__ PROF_DUMP_FILENAME_LEN ; 
 int /*<<< orphan*/  log_filename ; 
 int /*<<< orphan*/  log_mtx ; 
 int /*<<< orphan*/  log_seq ; 
 int /*<<< orphan*/  log_start_timestamp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opt_prof ; 
 int /*<<< orphan*/  prof_booted ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ prof_logging_state ; 
 scalar_t__ prof_logging_state_started ; 
 scalar_t__ prof_logging_state_stopped ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

bool
FUNC6(tsdn_t *tsdn, const char *filename) {
	if (!opt_prof || !prof_booted) {
		return true;
	}

	bool ret = false;

	FUNC0(tsdn, &log_mtx);

	if (prof_logging_state != prof_logging_state_stopped) {
		ret = true;
	} else if (filename == NULL) {
		/* Make default name. */
		FUNC3(tsdn, log_filename, log_seq);
		log_seq++;
		prof_logging_state = prof_logging_state_started;
	} else if (FUNC5(filename) >= PROF_DUMP_FILENAME_LEN) {
		ret = true;
	} else {
		FUNC4(log_filename, filename);
		prof_logging_state = prof_logging_state_started;
	}

	if (!ret) {
		FUNC2(&log_start_timestamp);
	}

	FUNC1(tsdn, &log_mtx);

	return ret;
}