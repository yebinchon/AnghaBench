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
 unsigned int FPU_DISABLE_EXCEPTION ; 
 unsigned int FPU_EXCEPTION ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

bool FUNC4(unsigned int subtype, struct pt_regs *regs)
{
	int done = true;
	/* Coprocessor disabled exception */
	if (subtype == FPU_DISABLE_EXCEPTION) {
		FUNC2();
		FUNC0(regs);
		FUNC3();
	}
	/* Coprocessor exception such as underflow and overflow */
	else if (subtype == FPU_EXCEPTION)
		FUNC1(regs);
	else
		done = false;
	return done;
}