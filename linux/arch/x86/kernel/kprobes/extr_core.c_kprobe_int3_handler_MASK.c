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
struct pt_regs {int ip; } ;
struct kprobe_ctlblk {int /*<<< orphan*/  kprobe_status; } ;
struct kprobe {int /*<<< orphan*/  (* pre_handler ) (struct kprobe*,struct pt_regs*) ;} ;
typedef  scalar_t__ kprobe_opcode_t ;

/* Variables and functions */
 scalar_t__ BREAKPOINT_INSTRUCTION ; 
 int /*<<< orphan*/  KPROBE_HIT_ACTIVE ; 
 struct kprobe* FUNC0 (scalar_t__*) ; 
 struct kprobe_ctlblk* FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (struct kprobe*,struct pt_regs*,struct kprobe_ctlblk*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct kprobe*,struct pt_regs*,struct kprobe_ctlblk*) ; 
 int /*<<< orphan*/  FUNC6 (struct kprobe*,struct pt_regs*,struct kprobe_ctlblk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kprobe*,struct pt_regs*) ; 
 scalar_t__ FUNC8 (struct pt_regs*) ; 

int FUNC9(struct pt_regs *regs)
{
	kprobe_opcode_t *addr;
	struct kprobe *p;
	struct kprobe_ctlblk *kcb;

	if (FUNC8(regs))
		return 0;

	addr = (kprobe_opcode_t *)(regs->ip - sizeof(kprobe_opcode_t));
	/*
	 * We don't want to be preempted for the entire duration of kprobe
	 * processing. Since int3 and debug trap disables irqs and we clear
	 * IF while singlestepping, it must be no preemptible.
	 */

	kcb = FUNC1();
	p = FUNC0(addr);

	if (p) {
		if (FUNC2()) {
			if (FUNC3(p, regs, kcb))
				return 1;
		} else {
			FUNC5(p, regs, kcb);
			kcb->kprobe_status = KPROBE_HIT_ACTIVE;

			/*
			 * If we have no pre-handler or it returned 0, we
			 * continue with normal processing.  If we have a
			 * pre-handler and it returned non-zero, that means
			 * user handler setup registers to exit to another
			 * instruction, we must skip the single stepping.
			 */
			if (!p->pre_handler || !p->pre_handler(p, regs))
				FUNC6(p, regs, kcb, 0);
			else
				FUNC4();
			return 1;
		}
	} else if (*addr != BREAKPOINT_INSTRUCTION) {
		/*
		 * The breakpoint instruction was removed right
		 * after we hit it.  Another cpu has removed
		 * either a probepoint or a debugger breakpoint
		 * at this address.  In either case, no further
		 * handling of this interrupt is appropriate.
		 * Back up over the (now missing) int3 and run
		 * the original instruction.
		 */
		regs->ip = (unsigned long)addr;
		return 1;
	} /* else: not a kprobe fault; let the kernel handle it */

	return 0;
}