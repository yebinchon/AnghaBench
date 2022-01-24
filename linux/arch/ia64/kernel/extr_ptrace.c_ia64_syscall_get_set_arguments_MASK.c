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
typedef  int /*<<< orphan*/  ufi ;
struct unw_frame_info {int dummy; } ;
struct task_struct {int dummy; } ;
struct syscall_get_set_args {int n; unsigned long* args; int rw; struct pt_regs* regs; int /*<<< orphan*/  i; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (struct unw_frame_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct unw_frame_info*,struct syscall_get_set_args*) ; 
 int /*<<< orphan*/  FUNC2 (struct unw_frame_info*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (struct unw_frame_info*,struct syscall_get_set_args*),struct syscall_get_set_args*) ; 

void FUNC4(struct task_struct *task,
	struct pt_regs *regs, unsigned long *args, int rw)
{
	struct syscall_get_set_args data = {
		.i = 0,
		.n = 6,
		.args = args,
		.regs = regs,
		.rw = rw,
	};

	if (task == current)
		FUNC3(syscall_get_set_args_cb, &data);
	else {
		struct unw_frame_info ufi;
		FUNC0(&ufi, 0, sizeof(ufi));
		FUNC2(&ufi, task);
		FUNC1(&ufi, &data);
	}
}