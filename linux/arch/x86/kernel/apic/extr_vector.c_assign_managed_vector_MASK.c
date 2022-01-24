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
struct apic_chip_data {int /*<<< orphan*/  cpu; scalar_t__ vector; } ;

/* Variables and functions */
 struct apic_chip_data* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cpumask const*,struct cpumask const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpumask* FUNC5 (struct irq_data*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  vector_matrix ; 
 int /*<<< orphan*/  vector_searchmask ; 

__attribute__((used)) static int
FUNC8(struct irq_data *irqd, const struct cpumask *dest)
{
	const struct cpumask *affmsk = FUNC5(irqd);
	struct apic_chip_data *apicd = FUNC0(irqd);
	int vector, cpu;

	FUNC3(vector_searchmask, dest, affmsk);

	/* set_affinity might call here for nothing */
	if (apicd->vector && FUNC4(apicd->cpu, vector_searchmask))
		return 0;
	vector = FUNC6(vector_matrix, vector_searchmask,
					  &cpu);
	FUNC7(irqd->irq, vector, vector);
	if (vector < 0)
		return vector;
	FUNC2(irqd, vector, cpu);
	FUNC1(irqd, vector, cpu);
	return 0;
}