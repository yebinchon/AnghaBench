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
struct stacktrace_ops {int /*<<< orphan*/  (* address ) (void*,unsigned long,int) ;} ;
struct pt_regs {int dummy; } ;
struct dwarf_frame {unsigned long return_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwarf_frame*) ; 
 struct dwarf_frame* FUNC1 (unsigned long,struct dwarf_frame*) ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned long,int) ; 

__attribute__((used)) static void FUNC3(struct task_struct *task,
				struct pt_regs *regs,
				unsigned long *sp,
				const struct stacktrace_ops *ops,
				void *data)
{
	struct dwarf_frame *frame, *_frame;
	unsigned long return_addr;

	_frame = NULL;
	return_addr = 0;

	while (1) {
		frame = FUNC1(return_addr, _frame);

		if (_frame)
			FUNC0(_frame);

		_frame = frame;

		if (!frame || !frame->return_addr)
			break;

		return_addr = frame->return_addr;
		ops->address(data, return_addr, 1);
	}

	if (frame)
		FUNC0(frame);
}