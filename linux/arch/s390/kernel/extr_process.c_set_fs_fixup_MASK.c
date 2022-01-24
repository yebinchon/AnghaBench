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
struct pt_regs {int /*<<< orphan*/  int_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  USER_DS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 struct pt_regs* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 

void FUNC4(void)
{
	struct pt_regs *regs = FUNC1();
	static bool warned;

	FUNC2(USER_DS);
	if (warned)
		return;
	FUNC0(1, "Unbalanced set_fs - int code: 0x%x\n", regs->int_code);
	FUNC3(regs);
	warned = true;
}