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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int reset_counter1; int reset_counter2; scalar_t__ ctr2_enable; scalar_t__ ctr1_enable; } ;

/* Variables and functions */
 int CAUSEF_PCI ; 
 int CAUSEF_TI ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int LOONGSON3_PERFCNT_OVERFLOW ; 
 struct pt_regs* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,int) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 TYPE_1__ reg ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(void)
{
	unsigned long flags;
	uint64_t counter1, counter2;
	uint32_t cause, handled = IRQ_NONE;
	struct pt_regs *regs = FUNC0();

	cause = FUNC4();
	if (!(cause & CAUSEF_PCI))
		return handled;

	counter1 = FUNC5();
	counter2 = FUNC6();

	FUNC2(flags);

	if (counter1 & LOONGSON3_PERFCNT_OVERFLOW) {
		if (reg.ctr1_enable)
			FUNC3(regs, 0);
		counter1 = reg.reset_counter1;
	}
	if (counter2 & LOONGSON3_PERFCNT_OVERFLOW) {
		if (reg.ctr2_enable)
			FUNC3(regs, 1);
		counter2 = reg.reset_counter2;
	}

	FUNC1(flags);

	FUNC7(counter1);
	FUNC8(counter2);

	if (!(cause & CAUSEF_TI))
		handled = IRQ_HANDLED;

	return handled;
}