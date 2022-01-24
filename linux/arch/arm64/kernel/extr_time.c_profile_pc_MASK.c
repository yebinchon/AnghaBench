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
struct stackframe {unsigned long pc; } ;
struct pt_regs {unsigned long pc; int /*<<< orphan*/ * regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct stackframe*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct stackframe*) ; 

unsigned long FUNC3(struct pt_regs *regs)
{
	struct stackframe frame;

	if (!FUNC0(regs->pc))
		return regs->pc;

	FUNC1(&frame, regs->regs[29], regs->pc);

	do {
		int ret = FUNC2(NULL, &frame);
		if (ret < 0)
			return 0;
	} while (FUNC0(frame.pc));

	return frame.pc;
}