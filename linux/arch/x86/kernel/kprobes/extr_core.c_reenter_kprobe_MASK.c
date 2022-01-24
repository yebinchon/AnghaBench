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
struct pt_regs {int dummy; } ;
struct kprobe_ctlblk {int kprobe_status; } ;
struct kprobe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  KPROBE_HIT_ACTIVE 131 
#define  KPROBE_HIT_SS 130 
#define  KPROBE_HIT_SSDONE 129 
#define  KPROBE_REENTER 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct kprobe*) ; 
 int /*<<< orphan*/  FUNC3 (struct kprobe*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct kprobe*,struct pt_regs*,struct kprobe_ctlblk*,int) ; 

__attribute__((used)) static int FUNC6(struct kprobe *p, struct pt_regs *regs,
			  struct kprobe_ctlblk *kcb)
{
	switch (kcb->kprobe_status) {
	case KPROBE_HIT_SSDONE:
	case KPROBE_HIT_ACTIVE:
	case KPROBE_HIT_SS:
		FUNC3(p);
		FUNC5(p, regs, kcb, 1);
		break;
	case KPROBE_REENTER:
		/* A probe has been hit in the codepath leading up to, or just
		 * after, single-stepping of a probed instruction. This entire
		 * codepath should strictly reside in .kprobes.text section.
		 * Raise a BUG or we'll continue in an endless reentering loop
		 * and eventually a stack overflow.
		 */
		FUNC4("Unrecoverable kprobe detected.\n");
		FUNC2(p);
		FUNC0();
	default:
		/* impossible cases */
		FUNC1(1);
		return 0;
	}

	return 1;
}