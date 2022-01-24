#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ log_var_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_ACQUIRE ; 
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 int JEMALLOC_LOG_VAR_BUFSIZE ; 
 int LOG_ENABLED ; 
 int LOG_INITIALIZED_NOT_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_init_done ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,char const*,char const*) ; 
 char const* log_var_names ; 
 int FUNC5 (char*) ; 

unsigned
FUNC6(log_var_t *log_var) {
	const char *log_var_begin = log_var->name;
	const char *log_var_end = log_var->name + FUNC5(log_var->name);

	/* Pointer to one before the beginning of the current segment. */
	const char *segment_begin = log_var_names;

	/*
	 * If log_init done is false, we haven't parsed the malloc conf yet.  To
	 * avoid log-spew, we default to not displaying anything.
	 */
	if (!FUNC1(&log_init_done, ATOMIC_ACQUIRE)) {
		return LOG_INITIALIZED_NOT_ENABLED;
	}

	while (true) {
		const char *segment_end = FUNC3(
		    segment_begin);
		FUNC0(segment_end < log_var_names + JEMALLOC_LOG_VAR_BUFSIZE);
		if (FUNC4(segment_begin, segment_end,
		    log_var_begin, log_var_end)) {
			FUNC2(&log_var->state, LOG_ENABLED,
			    ATOMIC_RELAXED);
			return LOG_ENABLED;
		}
		if (*segment_end == '\0') {
			/* Hit the end of the segment string with no match. */
			FUNC2(&log_var->state,
			    LOG_INITIALIZED_NOT_ENABLED, ATOMIC_RELAXED);
			return LOG_INITIALIZED_NOT_ENABLED;
		}
		/* Otherwise, skip the delimiter and continue. */
		segment_begin = segment_end + 1;
	}
}