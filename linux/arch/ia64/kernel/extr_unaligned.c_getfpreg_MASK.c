#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct switch_stack {int dummy; } ;
struct pt_regs {int dummy; } ;
struct ia64_fpreg {int dummy; } ;
struct TYPE_4__ {struct ia64_fpreg* fph; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 unsigned long IA64_FIRST_ROTATING_FR ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC3 (struct ia64_fpreg*) ; 
 int /*<<< orphan*/  FUNC4 (struct ia64_fpreg*) ; 
 size_t FUNC5 (struct pt_regs*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7 (unsigned long regnum, struct ia64_fpreg *fpval, struct pt_regs *regs)
{
	struct switch_stack *sw = (struct switch_stack *) regs - 1;
	unsigned long addr;

	/*
	 * From EAS-2.5: FPDisableFault has higher priority than
	 * Unaligned Fault. Thus, when we get here, we know the partition is
	 * enabled.
	 *
	 * When regnum > 31, the register is still live and we need to force a save
	 * to current->thread.fph to get access to it.  See discussion in setfpreg()
	 * for reasons and other ways of doing this.
	 */
	if (regnum >= IA64_FIRST_ROTATING_FR) {
		FUNC6(current);
		*fpval = current->thread.fph[FUNC5(regs, regnum)];
	} else {
		/*
		 * f0 = 0.0, f1= 1.0. Those registers are constant and are thus
		 * not saved, we must generate their spilled form on the fly
		 */
		switch(regnum) {
		case 0:
			FUNC3(fpval);
			break;
		case 1:
			FUNC4(fpval);
			break;
		default:
			/*
			 * pt_regs or switch_stack ?
			 */
			addr =  FUNC1(regnum) ? (unsigned long)sw
						 : (unsigned long)regs;

			FUNC0("is_sw=%d tmp_base=%lx offset=0x%x\n",
			       FUNC1(regnum), addr, FUNC2(regnum));

			addr  += FUNC2(regnum);
			*fpval = *(struct ia64_fpreg *)addr;
		}
	}
}