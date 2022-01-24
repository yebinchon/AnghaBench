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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  nstime_t ;
typedef  int /*<<< orphan*/  emitter_t ;

/* Variables and functions */
 char* JEMALLOC_VERSION ; 
 int /*<<< orphan*/  NSTIME_ZERO_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  emitter_type_int ; 
 int /*<<< orphan*/  emitter_type_string ; 
 int /*<<< orphan*/  emitter_type_uint64 ; 
 int lg_prof_sample ; 
 int /*<<< orphan*/  log_start_timestamp ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 

__attribute__((used)) static void
FUNC6(emitter_t *emitter) {
	FUNC2(emitter, "info");

	nstime_t now = NSTIME_ZERO_INITIALIZER;

	FUNC4(&now);
	uint64_t ns = FUNC3(&now) - FUNC3(&log_start_timestamp);
	FUNC0(emitter, "duration", emitter_type_uint64, &ns);

	char *vers = JEMALLOC_VERSION;
	FUNC0(emitter, "version",
	    emitter_type_string, &vers);

	FUNC0(emitter, "lg_sample_rate",
	    emitter_type_int, &lg_prof_sample);

	int pid = FUNC5();
	FUNC0(emitter, "pid", emitter_type_int, &pid);

	FUNC1(emitter);
}