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
struct apic_chip_data {int is_managed; } ;

/* Variables and functions */
 struct apic_chip_data* FUNC0 (struct irq_data*) ; 
 struct cpumask* FUNC1 (struct irq_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vector_lock ; 
 int /*<<< orphan*/  vector_matrix ; 

__attribute__((used)) static int FUNC6(struct irq_data *irqd)
{
	const struct cpumask *affmsk = FUNC1(irqd);
	struct apic_chip_data *apicd = FUNC0(irqd);
	unsigned long flags;
	int ret;

	FUNC3(&vector_lock, flags);
	apicd->is_managed = true;
	ret = FUNC2(vector_matrix, affmsk);
	FUNC4(&vector_lock, flags);
	FUNC5(irqd->irq, ret);
	return ret;
}