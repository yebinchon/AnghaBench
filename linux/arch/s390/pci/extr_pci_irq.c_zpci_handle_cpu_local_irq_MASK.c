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
struct airq_iv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQIO_MSI ; 
 int /*<<< orphan*/  PCI_ISC ; 
 int /*<<< orphan*/  SIC_IRQ_MODE_D_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (struct airq_iv*) ; 
 int /*<<< orphan*/  FUNC1 (struct airq_iv*,unsigned long) ; 
 unsigned long FUNC2 (struct airq_iv*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 () ; 
 struct airq_iv** zpci_ibv ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(bool rescan)
{
	struct airq_iv *dibv = zpci_ibv[FUNC5()];
	unsigned long bit;
	int irqs_on = 0;

	for (bit = 0;;) {
		/* Scan the directed IRQ bit vector */
		bit = FUNC2(dibv, bit, FUNC0(dibv));
		if (bit == -1UL) {
			if (!rescan || irqs_on++)
				/* End of second scan with interrupts on. */
				break;
			/* First scan complete, reenable interrupts. */
			if (FUNC6(SIC_IRQ_MODE_D_SINGLE, PCI_ISC))
				break;
			bit = 0;
			continue;
		}
		FUNC4(IRQIO_MSI);
		FUNC3(FUNC1(dibv, bit));
	}
}