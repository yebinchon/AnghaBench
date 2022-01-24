#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {unsigned long orig_ax; scalar_t__ ip; scalar_t__ gs; int /*<<< orphan*/  cs; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct optimized_kprobe {TYPE_1__ kp; } ;
struct kprobe_ctlblk {int /*<<< orphan*/  kprobe_status; } ;

/* Variables and functions */
 scalar_t__ INT3_SIZE ; 
 int /*<<< orphan*/  KPROBE_HIT_ACTIVE ; 
 int /*<<< orphan*/  __KERNEL_CS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  current_kprobe ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct kprobe_ctlblk* FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(struct optimized_kprobe *op, struct pt_regs *regs)
{
	/* This is possible if op is under delayed unoptimizing */
	if (FUNC3(&op->kp))
		return;

	FUNC7();
	if (FUNC4()) {
		FUNC5(&op->kp);
	} else {
		struct kprobe_ctlblk *kcb = FUNC2();
		/* Save skipped registers */
		regs->cs = __KERNEL_CS;
#ifdef CONFIG_X86_32
		regs->cs |= get_kernel_rpl();
		regs->gs = 0;
#endif
		regs->ip = (unsigned long)op->kp.addr + INT3_SIZE;
		regs->orig_ax = ~0UL;

		FUNC0(current_kprobe, &op->kp);
		kcb->kprobe_status = KPROBE_HIT_ACTIVE;
		FUNC6(&op->kp, regs);
		FUNC0(current_kprobe, NULL);
	}
	FUNC8();
}