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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  mmiotrace_enabled ; 
 int /*<<< orphan*/  mmiotrace_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ nommiotrace ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace_lock ; 

void FUNC9(void)
{
	FUNC4(&mmiotrace_mutex);
	if (FUNC2())
		goto out;

	if (nommiotrace)
		FUNC6("MMIO tracing disabled.\n");
	FUNC3();
	FUNC1();
	FUNC7(&trace_lock);
	FUNC0(&mmiotrace_enabled);
	FUNC8(&trace_lock);
	FUNC6("enabled.\n");
out:
	FUNC5(&mmiotrace_mutex);
}