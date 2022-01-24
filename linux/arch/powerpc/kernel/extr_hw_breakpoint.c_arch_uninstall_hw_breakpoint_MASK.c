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
struct perf_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  bp_per_reg ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct perf_event** FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct perf_event *bp)
{
	struct perf_event **slot = FUNC2(&bp_per_reg);

	if (*slot != bp) {
		FUNC0(1, "Can't find the breakpoint");
		return;
	}

	*slot = NULL;
	FUNC1();
}