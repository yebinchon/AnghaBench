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
 int /*<<< orphan*/  FUNC0 () ; 
 long EFAULT ; 
 long EINVAL ; 
 int /*<<< orphan*/  SEGV_BNDERR ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pt_regs*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 
 scalar_t__ FUNC4 (struct pt_regs*) ; 

void FUNC5(struct pt_regs *regs, unsigned long ea, long err)
{
	if (err == -EFAULT) {
		if (FUNC4(regs))
			FUNC1(SIGSEGV, regs, SEGV_BNDERR, ea);
		else
			FUNC2(regs, ea, SIGSEGV);
	} else if (err == -EINVAL) {
		FUNC3(regs);
	} else {
		FUNC0();
	}
}