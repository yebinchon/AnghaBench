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
struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,struct cpumask const*) ; 
 struct cpumask const* FUNC2 (struct irq_data*) ; 
 scalar_t__ FUNC3 (struct irq_data*) ; 

__attribute__((used)) static inline int FUNC4(int cpu, struct irq_data *d,
				     const struct cpumask *m)
{
	bool enable = FUNC0(cpu);

#ifdef CONFIG_SMP
	if (m)
		enable &= cpumask_test_cpu(cpu, m);
	else if (irqd_affinity_was_set(d))
		enable &= cpumask_test_cpu(cpu, irq_data_get_affinity_mask(d));
#endif
	return enable;
}