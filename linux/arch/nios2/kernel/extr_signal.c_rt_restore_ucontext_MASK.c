#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long* gregs; unsigned long version; } ;
struct ucontext {int /*<<< orphan*/  uc_stack; TYPE_2__ uc_mcontext; } ;
struct switch_stack {int r16; int r17; int r18; int r19; int r20; int r21; int r22; int r23; int fp; int gp; } ;
struct pt_regs {int r1; int r2; int r3; int r4; int r5; int r6; int r7; int r8; int r9; int r10; int r11; int r12; int r13; int r14; int r15; int ea; int ra; int sp; int orig_r2; } ;
struct TYPE_4__ {int /*<<< orphan*/  fn; } ;
struct TYPE_6__ {TYPE_1__ restart_block; } ;

/* Variables and functions */
 int MCONTEXT_VERSION ; 
 int FUNC0 (int,unsigned long*) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  do_no_restart_syscall ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct pt_regs *regs,
					struct switch_stack *sw,
					struct ucontext *uc, int *pr2)
{
	int temp;
	unsigned long *gregs = uc->uc_mcontext.gregs;
	int err;

	/* Always make any pending restarted system calls return -EINTR */
	current->restart_block.fn = do_no_restart_syscall;

	err = FUNC0(temp, &uc->uc_mcontext.version);
	if (temp != MCONTEXT_VERSION)
		goto badframe;
	/* restore passed registers */
	err |= FUNC0(regs->r1, &gregs[0]);
	err |= FUNC0(regs->r2, &gregs[1]);
	err |= FUNC0(regs->r3, &gregs[2]);
	err |= FUNC0(regs->r4, &gregs[3]);
	err |= FUNC0(regs->r5, &gregs[4]);
	err |= FUNC0(regs->r6, &gregs[5]);
	err |= FUNC0(regs->r7, &gregs[6]);
	err |= FUNC0(regs->r8, &gregs[7]);
	err |= FUNC0(regs->r9, &gregs[8]);
	err |= FUNC0(regs->r10, &gregs[9]);
	err |= FUNC0(regs->r11, &gregs[10]);
	err |= FUNC0(regs->r12, &gregs[11]);
	err |= FUNC0(regs->r13, &gregs[12]);
	err |= FUNC0(regs->r14, &gregs[13]);
	err |= FUNC0(regs->r15, &gregs[14]);
	err |= FUNC0(sw->r16, &gregs[15]);
	err |= FUNC0(sw->r17, &gregs[16]);
	err |= FUNC0(sw->r18, &gregs[17]);
	err |= FUNC0(sw->r19, &gregs[18]);
	err |= FUNC0(sw->r20, &gregs[19]);
	err |= FUNC0(sw->r21, &gregs[20]);
	err |= FUNC0(sw->r22, &gregs[21]);
	err |= FUNC0(sw->r23, &gregs[22]);
	/* gregs[23] is handled below */
	err |= FUNC0(sw->fp, &gregs[24]);  /* Verify, should this be
							settable */
	err |= FUNC0(sw->gp, &gregs[25]);  /* Verify, should this be
							settable */

	err |= FUNC0(temp, &gregs[26]);  /* Not really necessary no user
							settable bits */
	err |= FUNC0(regs->ea, &gregs[27]);

	err |= FUNC0(regs->ra, &gregs[23]);
	err |= FUNC0(regs->sp, &gregs[28]);

	regs->orig_r2 = -1;		/* disable syscall checks */

	err |= FUNC1(&uc->uc_stack);
	if (err)
		goto badframe;

	*pr2 = regs->r2;
	return err;

badframe:
	return 1;
}