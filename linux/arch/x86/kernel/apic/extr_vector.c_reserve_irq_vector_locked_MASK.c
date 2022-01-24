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
struct apic_chip_data {int can_reserve; int has_reserved; } ;

/* Variables and functions */
 struct apic_chip_data* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  vector_matrix ; 

__attribute__((used)) static void FUNC5(struct irq_data *irqd)
{
	struct apic_chip_data *apicd = FUNC0(irqd);

	FUNC1(vector_matrix);
	apicd->can_reserve = true;
	apicd->has_reserved = true;
	FUNC2(irqd);
	FUNC3(irqd->irq, 0);
	FUNC4(irqd);
}