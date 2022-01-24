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
struct TYPE_2__ {scalar_t__ xstate; } ;
struct task_struct {TYPE_1__ thread; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  task_xstate_cachep ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xstate_size ; 

int FUNC4(struct task_struct *dst, struct task_struct *src)
{
#ifdef CONFIG_SUPERH32
	unlazy_fpu(src, task_pt_regs(src));
#endif
	*dst = *src;

	if (src->thread.xstate) {
		dst->thread.xstate = FUNC0(task_xstate_cachep,
						      GFP_KERNEL);
		if (!dst->thread.xstate)
			return -ENOMEM;
		FUNC1(dst->thread.xstate, src->thread.xstate, xstate_size);
	}

	return 0;
}