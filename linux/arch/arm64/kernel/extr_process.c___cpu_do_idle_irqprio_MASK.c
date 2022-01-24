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

/* Variables and functions */
 unsigned long GIC_PRIO_IRQON ; 
 unsigned long GIC_PRIO_PSR_I_SET ; 
 unsigned long PSR_I_BIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  daif ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned long pmr;
	unsigned long daif_bits;

	daif_bits = FUNC3(daif);
	FUNC4(daif_bits | PSR_I_BIT, daif);

	/*
	 * Unmask PMR before going idle to make sure interrupts can
	 * be raised.
	 */
	pmr = FUNC1();
	FUNC2(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);

	FUNC0();

	FUNC2(pmr);
	FUNC4(daif_bits, daif);
}