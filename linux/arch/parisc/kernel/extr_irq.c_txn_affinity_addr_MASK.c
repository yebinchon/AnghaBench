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
struct irq_data {int dummy; } ;
struct TYPE_2__ {unsigned long txn_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 struct irq_data* FUNC3 (unsigned int) ; 
 TYPE_1__ FUNC4 (int /*<<< orphan*/ ,int) ; 

unsigned long FUNC5(unsigned int irq, int cpu)
{
#ifdef CONFIG_SMP
	struct irq_data *d = irq_get_irq_data(irq);
	cpumask_copy(irq_data_get_affinity_mask(d), cpumask_of(cpu));
#endif

	return FUNC4(cpu_data, cpu).txn_addr;
}