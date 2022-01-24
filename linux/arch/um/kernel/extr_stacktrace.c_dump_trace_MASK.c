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
struct TYPE_2__ {struct pt_regs* segv_regs; } ;
struct task_struct {TYPE_1__ thread; } ;
struct stacktrace_ops {int /*<<< orphan*/  (* address ) (void*,unsigned long,int) ;} ;
struct stack_frame {struct stack_frame* next_frame; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int THREAD_SIZE ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (struct task_struct*,struct pt_regs*) ; 
 unsigned long* FUNC2 (struct task_struct*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned long,int) ; 

void FUNC4(struct task_struct *tsk,
		const struct stacktrace_ops *ops,
		void *data)
{
	int reliable = 0;
	unsigned long *sp, bp, addr;
	struct pt_regs *segv_regs = tsk->thread.segv_regs;
	struct stack_frame *frame;

	bp = FUNC1(tsk, segv_regs);
	sp = FUNC2(tsk, segv_regs);

	frame = (struct stack_frame *)bp;
	while (((long) sp & (THREAD_SIZE-1)) != 0) {
		addr = *sp;
		if (FUNC0(addr)) {
			reliable = 0;
			if ((unsigned long) sp == bp + sizeof(long)) {
				frame = frame ? frame->next_frame : NULL;
				bp = (unsigned long)frame;
				reliable = 1;
			}
			ops->address(data, addr, reliable);
		}
		sp++;
	}
}