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
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 

void FUNC5(const char *str, struct pt_regs *regs, long err)
{

	FUNC0();
	FUNC3("\n%s#: %04lx\n", str, err & 0xffff);
	FUNC4(regs);
#ifdef CONFIG_JUMP_UPON_UNHANDLED_EXCEPTION
	printk("\n\nUNHANDLED_EXCEPTION: entering infinite loop\n");

	/* shut down interrupts */
	local_irq_disable();

	__asm__ __volatile__("l.nop   1");
	do {} while (1);
#endif
	FUNC1(SIGSEGV);
}