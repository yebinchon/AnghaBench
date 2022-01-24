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
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 

void FUNC5(struct pt_regs *regs)
{
	FUNC2("Reserved Instruction\n");
	FUNC3(regs);
	if (!FUNC4(regs))
		FUNC0(SIGILL);
	FUNC1(SIGILL);
}