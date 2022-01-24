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
struct TYPE_2__ {size_t event; int counter; int unassigned; } ;
struct perf_sched {TYPE_1__ state; } ;
struct event_constraint {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_sched*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_sched*,struct event_constraint**,int,int,int,int) ; 
 scalar_t__ FUNC2 (struct perf_sched*) ; 

int FUNC3(struct event_constraint **constraints, int n,
			int wmin, int wmax, int gpmax, int *assign)
{
	struct perf_sched sched;

	FUNC1(&sched, constraints, n, wmin, wmax, gpmax);

	do {
		if (!FUNC0(&sched))
			break;	/* failed */
		if (assign)
			assign[sched.state.event] = sched.state.counter;
	} while (FUNC2(&sched));

	return sched.state.unassigned;
}