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
 int NUMA_NO_NODE ; 
 int FUNC0 (struct irq_data*,struct cpumask const*) ; 
 struct cpumask const* cpu_online_mask ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask const*,struct cpumask const*,struct cpumask const*) ; 
 struct cpumask const* FUNC2 (int) ; 
 struct cpumask* FUNC3 (struct irq_data*) ; 
 int FUNC4 (struct irq_data*) ; 
 struct cpumask const* vector_searchmask ; 

__attribute__((used)) static int FUNC5(struct irq_data *irqd)
{
	/* Get the affinity mask - either irq_default_affinity or (user) set */
	const struct cpumask *affmsk = FUNC3(irqd);
	int node = FUNC4(irqd);

	if (node == NUMA_NO_NODE)
		goto all;
	/* Try the intersection of @affmsk and node mask */
	FUNC1(vector_searchmask, FUNC2(node), affmsk);
	if (!FUNC0(irqd, vector_searchmask))
		return 0;
	/* Try the node mask */
	if (!FUNC0(irqd, FUNC2(node)))
		return 0;
all:
	/* Try the full affinity mask */
	FUNC1(vector_searchmask, affmsk, cpu_online_mask);
	if (!FUNC0(irqd, vector_searchmask))
		return 0;
	/* Try the full online mask */
	return FUNC0(irqd, cpu_online_mask);
}