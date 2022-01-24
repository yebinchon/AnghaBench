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
struct task_struct {int dummy; } ;
struct perf_event_attr {unsigned long bp_addr; } ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 struct perf_event* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event_attr*) ; 
 int FUNC2 (struct perf_event_attr*,int,int,int) ; 
 int /*<<< orphan*/  ptrace_triggered ; 
 struct perf_event* FUNC3 (struct perf_event_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct task_struct*) ; 

__attribute__((used)) static struct perf_event *
FUNC4(struct task_struct *tsk, int len, int type,
				unsigned long addr, bool disabled)
{
	struct perf_event_attr attr;
	int err;

	FUNC1(&attr);
	attr.bp_addr = addr;

	err = FUNC2(&attr, len, type, disabled);
	if (err)
		return FUNC0(err);

	return FUNC3(&attr, ptrace_triggered,
						 NULL, tsk);
}