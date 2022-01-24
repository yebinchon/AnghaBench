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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t perf_indent ; 
 int /*<<< orphan*/ * perf_start_times ; 
 int /*<<< orphan*/  trace_perf_key ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

uint64_t FUNC4(void)
{
	uint64_t now;

	if (!FUNC3(&trace_perf_key))
		return 0;

	now = FUNC2();
	perf_start_times[perf_indent] = now;
	if (perf_indent + 1 < FUNC0(perf_start_times))
		perf_indent++;
	else
		FUNC1("Too deep indentation");
	return now;
}