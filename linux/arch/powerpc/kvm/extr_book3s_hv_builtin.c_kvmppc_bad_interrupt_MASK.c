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
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  in_nmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGABRT ; 
 int FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct pt_regs*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*) ; 

void FUNC6(struct pt_regs *regs)
{
	/*
	 * 100 could happen at any time, 200 can happen due to invalid real
	 * address access for example (or any time due to a hardware problem).
	 */
	if (FUNC0(regs) == 0x100) {
		FUNC2()->in_nmi++;
		FUNC5(regs);
		FUNC2()->in_nmi--;
	} else if (FUNC0(regs) == 0x200) {
		FUNC3(regs);
	} else {
		FUNC1("Bad interrupt in KVM entry/exit code", regs, SIGABRT);
	}
	FUNC4("Bad KVM trap");
}