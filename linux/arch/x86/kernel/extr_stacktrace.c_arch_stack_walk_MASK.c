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
struct unwind_state {int dummy; } ;
struct task_struct {int dummy; } ;
struct pt_regs {unsigned long ip; } ;
typedef  int /*<<< orphan*/  (* stack_trace_consume_fn ) (void*,unsigned long,int) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct unwind_state*) ; 
 unsigned long FUNC1 (struct unwind_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct unwind_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct unwind_state*,struct task_struct*,struct pt_regs*,int /*<<< orphan*/ *) ; 

void FUNC4(stack_trace_consume_fn consume_entry, void *cookie,
		     struct task_struct *task, struct pt_regs *regs)
{
	struct unwind_state state;
	unsigned long addr;

	if (regs && !consume_entry(cookie, regs->ip, false))
		return;

	for (FUNC3(&state, task, regs, NULL); !FUNC0(&state);
	     FUNC2(&state)) {
		addr = FUNC1(&state);
		if (!addr || !consume_entry(cookie, addr, false))
			break;
	}
}