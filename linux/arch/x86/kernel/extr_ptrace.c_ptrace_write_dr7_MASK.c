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
struct perf_event {int dummy; } ;

/* Variables and functions */
 unsigned long DR_CONTROL_RESERVED ; 
 int HBP_NUM ; 
 scalar_t__ FUNC0 (struct perf_event*) ; 
 int FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int,unsigned int*,unsigned int*) ; 
 unsigned long FUNC4 (struct perf_event**) ; 
 int FUNC5 (struct perf_event*,unsigned int,unsigned int,int) ; 
 struct perf_event* FUNC6 (struct task_struct*,unsigned int,unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct task_struct *tsk, unsigned long data)
{
	struct thread_struct *thread = &tsk->thread;
	unsigned long old_dr7;
	bool second_pass = false;
	int i, rc, ret = 0;

	data &= ~DR_CONTROL_RESERVED;
	old_dr7 = FUNC4(thread->ptrace_bps);

restore:
	rc = 0;
	for (i = 0; i < HBP_NUM; i++) {
		unsigned len, type;
		bool disabled = !FUNC3(data, i, &len, &type);
		struct perf_event *bp = thread->ptrace_bps[i];

		if (!bp) {
			if (disabled)
				continue;

			bp = FUNC6(tsk,
					len, type, 0, disabled);
			if (FUNC0(bp)) {
				rc = FUNC1(bp);
				break;
			}

			thread->ptrace_bps[i] = bp;
			continue;
		}

		rc = FUNC5(bp, len, type, disabled);
		if (rc)
			break;
	}

	/* Restore if the first pass failed, second_pass shouldn't fail. */
	if (rc && !FUNC2(second_pass)) {
		ret = rc;
		data = old_dr7;
		second_pass = true;
		goto restore;
	}

	return ret;
}