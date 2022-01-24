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
struct switch_stack {unsigned long ar_unat; unsigned long caller_unat; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,...) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 unsigned long IA64_FIRST_STACKED_GR ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,unsigned long,unsigned long,int) ; 

__attribute__((used)) static void
FUNC4 (unsigned long regnum, unsigned long val, int nat, struct pt_regs *regs)
{
	struct switch_stack *sw = (struct switch_stack *) regs - 1;
	unsigned long addr;
	unsigned long bitmask;
	unsigned long *unat;

	/*
	 * First takes care of stacked registers
	 */
	if (regnum >= IA64_FIRST_STACKED_GR) {
		FUNC3(regs, regnum, val, nat);
		return;
	}

	/*
	 * Using r0 as a target raises a General Exception fault which has higher priority
	 * than the Unaligned Reference fault.
	 */

	/*
	 * Now look at registers in [0-31] range and init correct UNAT
	 */
	if (FUNC1(regnum)) {
		addr = (unsigned long)sw;
		unat = &sw->ar_unat;
	} else {
		addr = (unsigned long)regs;
		unat = &sw->caller_unat;
	}
	FUNC0("tmp_base=%lx switch_stack=%s offset=%d\n",
	       addr, unat==&sw->ar_unat ? "yes":"no", FUNC2(regnum));
	/*
	 * add offset from base of struct
	 * and do it !
	 */
	addr += FUNC2(regnum);

	*(unsigned long *)addr = val;

	/*
	 * We need to clear the corresponding UNAT bit to fully emulate the load
	 * UNAT bit_pos = GR[r3]{8:3} form EAS-2.4
	 */
	bitmask   = 1UL << (addr >> 3 & 0x3f);
	FUNC0("*0x%lx=0x%lx NaT=%d prev_unat @%p=%lx\n", addr, val, nat, (void *) unat, *unat);
	if (nat) {
		*unat |= bitmask;
	} else {
		*unat &= ~bitmask;
	}
	FUNC0("*0x%lx=0x%lx NaT=%d new unat: %p=%lx\n", addr, val, nat, (void *) unat,*unat);
}