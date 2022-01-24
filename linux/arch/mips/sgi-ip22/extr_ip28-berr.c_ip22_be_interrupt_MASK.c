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

/* Variables and functions */
 scalar_t__ MIPS_BE_DISCARD ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  count_be_interrupt ; 
 scalar_t__ debug_be_interrupt ; 
 int /*<<< orphan*/  FUNC0 (char*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct pt_regs* FUNC2 () ; 
 scalar_t__ FUNC3 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 

void FUNC5(int irq)
{
	struct pt_regs *regs = FUNC2();

	count_be_interrupt++;

	if (FUNC3(regs) != MIPS_BE_DISCARD) {
		/* Assume it would be too dangerous to continue ... */
		FUNC0("Oops", regs);
		FUNC1(SIGBUS);
	} else if (debug_be_interrupt)
		FUNC4(regs);
}