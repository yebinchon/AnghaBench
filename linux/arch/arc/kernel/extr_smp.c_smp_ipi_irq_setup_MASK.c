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
typedef  unsigned int irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  do_IPI ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipi_dev ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ ,char*,int*) ; 

int FUNC5(int cpu, irq_hw_number_t hwirq)
{
	int *dev = FUNC3(&ipi_dev, cpu);
	unsigned int virq = FUNC1(NULL, hwirq);

	if (!virq)
		FUNC2("Cannot find virq for root domain and hwirq=%lu", hwirq);

	/* Boot cpu calls request, all call enable */
	if (!cpu) {
		int rc;

		rc = FUNC4(virq, do_IPI, "IPI Interrupt", dev);
		if (rc)
			FUNC2("Percpu IRQ request failed for %u\n", virq);
	}

	FUNC0(virq, 0);

	return 0;
}