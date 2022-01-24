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

/* Variables and functions */
 scalar_t__ GIT_TRACE_ERROR ; 
 scalar_t__ GIT_TRACE_INFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,char*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_callback ; 
 int written ; 

void FUNC6(void)
{
#ifdef GIT_TRACE
	cl_assert(git_trace_level() == GIT_TRACE_INFO);
	cl_git_pass(git_trace_set(GIT_TRACE_ERROR, trace_callback));

	cl_assert(written == 0);
	git_trace(GIT_TRACE_INFO, "Hello %s!", "world");
	cl_assert(written == 0);

	git_trace(GIT_TRACE_ERROR, "Hello %s!", "world");
	cl_assert(written == 1);
#else
	FUNC2();
#endif
}