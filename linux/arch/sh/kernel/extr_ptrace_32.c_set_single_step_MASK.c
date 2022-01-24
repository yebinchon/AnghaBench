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
struct thread_struct {struct perf_event** ptrace_bps; } ;
struct task_struct {struct thread_struct thread; } ;
struct perf_event_attr {unsigned long bp_addr; int disabled; int /*<<< orphan*/  bp_type; int /*<<< orphan*/  bp_len; } ;
struct perf_event {struct perf_event_attr attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_BREAKPOINT_LEN_2 ; 
 int /*<<< orphan*/  HW_BREAKPOINT_R ; 
 scalar_t__ FUNC0 (struct perf_event*) ; 
 int FUNC1 (struct perf_event*) ; 
 int FUNC2 (struct perf_event*,struct perf_event_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event_attr*) ; 
 int /*<<< orphan*/  ptrace_triggered ; 
 struct perf_event* FUNC4 (struct perf_event_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct task_struct*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct task_struct *tsk, unsigned long addr)
{
	struct thread_struct *thread = &tsk->thread;
	struct perf_event *bp;
	struct perf_event_attr attr;

	bp = thread->ptrace_bps[0];
	if (!bp) {
		FUNC3(&attr);

		attr.bp_addr = addr;
		attr.bp_len = HW_BREAKPOINT_LEN_2;
		attr.bp_type = HW_BREAKPOINT_R;

		bp = FUNC4(&attr, ptrace_triggered,
						 NULL, tsk);
		if (FUNC0(bp))
			return FUNC1(bp);

		thread->ptrace_bps[0] = bp;
	} else {
		int err;

		attr = bp->attr;
		attr.bp_addr = addr;
		/* reenable breakpoint */
		attr.disabled = false;
		err = FUNC2(bp, &attr);
		if (FUNC5(err))
			return err;
	}

	return 0;
}