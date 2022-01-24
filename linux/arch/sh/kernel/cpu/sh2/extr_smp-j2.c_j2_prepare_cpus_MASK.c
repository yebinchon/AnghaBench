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
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_PERCPU ; 
 unsigned int NR_CPUS ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ j2_ipi_interrupt_handler ; 
 int /*<<< orphan*/  j2_ipi_irq ; 
 void* j2_ipi_trigger ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 void* FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int) ; 
 void* sh2_cpuid_addr ; 

__attribute__((used)) static void FUNC6(unsigned int max_cpus)
{
	struct device_node *np;
	unsigned i, max = 1;

	np = FUNC1(NULL, NULL, "jcore,ipi-controller");
	if (!np)
		goto out;

	j2_ipi_irq = FUNC0(np, 0);
	j2_ipi_trigger = FUNC2(np, 0);
	if (!j2_ipi_irq || !j2_ipi_trigger)
		goto out;

	np = FUNC1(NULL, NULL, "jcore,cpuid-mmio");
	if (!np)
		goto out;

	sh2_cpuid_addr = FUNC2(np, 0);
	if (!sh2_cpuid_addr)
		goto out;

	if (FUNC3(j2_ipi_irq, j2_ipi_interrupt_handler, IRQF_PERCPU,
			"ipi", (void *)j2_ipi_interrupt_handler) != 0)
		goto out;

	max = max_cpus;
out:
	/* Disable any cpus past max_cpus, or all secondaries if we didn't
	 * get the necessary resources to support SMP. */
	for (i=max; i<NR_CPUS; i++) {
		FUNC4(i, false);
		FUNC5(i, false);
	}
}