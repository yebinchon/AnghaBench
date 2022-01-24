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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  AR2315_IRQ_LCBUS_PCI ; 
 int /*<<< orphan*/  AR2315_IRQ_MISC ; 
 int /*<<< orphan*/  AR2315_IRQ_WLAN0 ; 
 int /*<<< orphan*/  ATH25_IRQ_CPU_CLOCK ; 
 int CAUSEF_IP2 ; 
 int CAUSEF_IP3 ; 
 int CAUSEF_IP5 ; 
 int CAUSEF_IP7 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	u32 pending = FUNC2() & FUNC1();

	if (pending & CAUSEF_IP3)
		FUNC0(AR2315_IRQ_WLAN0);
#ifdef CONFIG_PCI_AR2315
	else if (pending & CAUSEF_IP5)
		do_IRQ(AR2315_IRQ_LCBUS_PCI);
#endif
	else if (pending & CAUSEF_IP2)
		FUNC0(AR2315_IRQ_MISC);
	else if (pending & CAUSEF_IP7)
		FUNC0(ATH25_IRQ_CPU_CLOCK);
	else
		FUNC3();
}