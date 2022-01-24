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
struct apic_chip_data {scalar_t__ is_managed; scalar_t__ has_reserved; } ;

/* Variables and functions */
 struct apic_chip_data* FUNC0 (struct irq_data*) ; 
 struct cpumask* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  vector_matrix ; 

__attribute__((used)) static void FUNC5(struct irq_data *irqd)
{
	const struct cpumask *dest = FUNC1(irqd);
	struct apic_chip_data *apicd = FUNC0(irqd);

	FUNC4(irqd->irq, apicd->is_managed,
			      apicd->has_reserved);

	if (apicd->has_reserved)
		FUNC3(vector_matrix);
	if (apicd->is_managed)
		FUNC2(vector_matrix, dest);
}