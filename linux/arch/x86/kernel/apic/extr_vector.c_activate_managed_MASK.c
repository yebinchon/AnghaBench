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
struct irq_data {int /*<<< orphan*/  irq; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cpumask const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct cpumask* FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vector_searchmask ; 

__attribute__((used)) static int FUNC6(struct irq_data *irqd)
{
	const struct cpumask *dest = FUNC4(irqd);
	int ret;

	FUNC2(vector_searchmask, dest, cpu_online_mask);
	if (FUNC0(FUNC3(vector_searchmask))) {
		/* Something in the core code broke! Survive gracefully */
		FUNC5("Managed startup for irq %u, but no CPU\n", irqd->irq);
		return -EINVAL;
	}

	ret = FUNC1(irqd, vector_searchmask);
	/*
	 * This should not happen. The vector reservation got buggered.  Handle
	 * it gracefully.
	 */
	if (FUNC0(ret < 0)) {
		FUNC5("Managed startup irq %u, no vector available\n",
		       irqd->irq);
	}
	return ret;
}