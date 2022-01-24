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
struct pt_regs {int /*<<< orphan*/  msr; scalar_t__ nip; } ;
struct kprobe_ctlblk {scalar_t__ kprobe_status; int /*<<< orphan*/  kprobe_saved_msr; } ;
struct TYPE_2__ {unsigned int* insn; scalar_t__ boostable; } ;
struct kprobe {int /*<<< orphan*/  (* post_handler ) (struct kprobe*,struct pt_regs*,int /*<<< orphan*/ ) ;TYPE_1__ ainsn; scalar_t__ (* pre_handler ) (struct kprobe*,struct pt_regs*) ;} ;
typedef  unsigned int kprobe_opcode_t ;

/* Variables and functions */
 unsigned int BREAKPOINT_INSTRUCTION ; 
 scalar_t__ KPROBE_HIT_ACTIVE ; 
 scalar_t__ KPROBE_HIT_SS ; 
 scalar_t__ KPROBE_HIT_SSDONE ; 
 scalar_t__ KPROBE_REENTER ; 
 int /*<<< orphan*/  MSR_SINGLESTEP ; 
 struct kprobe* FUNC0 (unsigned int*) ; 
 struct kprobe_ctlblk* FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct kprobe*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct kprobe*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct kprobe_ctlblk*) ; 
 int /*<<< orphan*/  FUNC10 (struct kprobe_ctlblk*) ; 
 int /*<<< orphan*/  FUNC11 (struct kprobe*,struct pt_regs*,struct kprobe_ctlblk*) ; 
 scalar_t__ FUNC12 (struct kprobe*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC13 (struct kprobe*,struct pt_regs*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct kprobe*,struct pt_regs*) ; 
 scalar_t__ FUNC15 (struct pt_regs*) ; 

int FUNC16(struct pt_regs *regs)
{
	struct kprobe *p;
	int ret = 0;
	unsigned int *addr = (unsigned int *)regs->nip;
	struct kprobe_ctlblk *kcb;

	if (FUNC15(regs))
		return 0;

	/*
	 * We don't want to be preempted for the entire
	 * duration of kprobe processing
	 */
	FUNC5();
	kcb = FUNC1();

	/* Check we're not actually recursing */
	if (FUNC3()) {
		p = FUNC0(addr);
		if (p) {
			kprobe_opcode_t insn = *p->ainsn.insn;
			if (kcb->kprobe_status == KPROBE_HIT_SS &&
					FUNC2(insn)) {
				/* Turn off 'trace' bits */
				regs->msr &= ~MSR_SINGLESTEP;
				regs->msr |= kcb->kprobe_saved_msr;
				goto no_kprobe;
			}
			/* We have reentered the kprobe_handler(), since
			 * another probe was hit while within the handler.
			 * We here save the original kprobes variables and
			 * just single step on the instruction of the new probe
			 * without calling any user handlers.
			 */
			FUNC10(kcb);
			FUNC11(p, regs, kcb);
			FUNC4(p);
			kcb->kprobe_status = KPROBE_REENTER;
			if (p->ainsn.boostable >= 0) {
				ret = FUNC14(p, regs);

				if (ret > 0) {
					FUNC9(kcb);
					FUNC6();
					return 1;
				}
			}
			FUNC7(p, regs);
			return 1;
		} else if (*addr != BREAKPOINT_INSTRUCTION) {
			/* If trap variant, then it belongs not to us */
			kprobe_opcode_t cur_insn = *addr;

			if (FUNC2(cur_insn))
				goto no_kprobe;
			/* The breakpoint instruction was removed by
			 * another cpu right after we hit, no further
			 * handling of this interrupt is appropriate
			 */
			ret = 1;
		}
		goto no_kprobe;
	}

	p = FUNC0(addr);
	if (!p) {
		if (*addr != BREAKPOINT_INSTRUCTION) {
			/*
			 * PowerPC has multiple variants of the "trap"
			 * instruction. If the current instruction is a
			 * trap variant, it could belong to someone else
			 */
			kprobe_opcode_t cur_insn = *addr;
			if (FUNC2(cur_insn))
				goto no_kprobe;
			/*
			 * The breakpoint instruction was removed right
			 * after we hit it.  Another cpu has removed
			 * either a probepoint or a debugger breakpoint
			 * at this address.  In either case, no further
			 * handling of this interrupt is appropriate.
			 */
			ret = 1;
		}
		/* Not one of ours: let kernel handle it */
		goto no_kprobe;
	}

	kcb->kprobe_status = KPROBE_HIT_ACTIVE;
	FUNC11(p, regs, kcb);
	if (p->pre_handler && p->pre_handler(p, regs)) {
		/* handler changed execution path, so skip ss setup */
		FUNC8();
		FUNC6();
		return 1;
	}

	if (p->ainsn.boostable >= 0) {
		ret = FUNC14(p, regs);

		if (ret > 0) {
			if (p->post_handler)
				p->post_handler(p, regs, 0);

			kcb->kprobe_status = KPROBE_HIT_SSDONE;
			FUNC8();
			FUNC6();
			return 1;
		}
	}
	FUNC7(p, regs);
	kcb->kprobe_status = KPROBE_HIT_SS;
	return 1;

no_kprobe:
	FUNC6();
	return ret;
}