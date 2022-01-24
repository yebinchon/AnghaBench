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
struct TYPE_2__ {int /*<<< orphan*/  mpbroadcast; int /*<<< orphan*/  mpstatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int LEON3_IRQMPSTATUS_BROADCAST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_1__* leon3_irqctrl_regs ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(unsigned int mask)
{
	int broadcast =
	    ((FUNC1(&(leon3_irqctrl_regs->mpstatus)) >>
	      LEON3_IRQMPSTATUS_BROADCAST) & 1);
	if (!broadcast) {
		FUNC4("######## !!!! The irqmp-ctrl must have broadcast enabled, smp wont work !!!!! ####### nr cpus: %d\n",
		     FUNC3());
		if (FUNC3() > 1) {
			FUNC0();
		} else {
			FUNC4("continue anyway\n");
			return;
		}
	}
	FUNC2(&(leon3_irqctrl_regs->mpbroadcast), mask);
}