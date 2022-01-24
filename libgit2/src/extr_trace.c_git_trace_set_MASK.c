#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ git_trace_level_t ;
typedef  int /*<<< orphan*/ * git_trace_cb ;
struct TYPE_2__ {int /*<<< orphan*/ * callback; scalar_t__ level; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_MEMORY_BARRIER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ git_trace__data ; 

int FUNC3(git_trace_level_t level, git_trace_cb callback)
{
#ifdef GIT_TRACE
	assert(level == 0 || callback != NULL);

	git_trace__data.level = level;
	git_trace__data.callback = callback;
	GIT_MEMORY_BARRIER;

	return 0;
#else
	FUNC0(level);
	FUNC0(callback);

	FUNC2(GIT_ERROR_INVALID,
		"this version of libgit2 was not built with tracing.");
	return -1;
#endif
}