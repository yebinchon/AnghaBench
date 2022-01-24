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
struct irq_domain {int dummy; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 struct irq_data* FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(struct irq_domain *d, unsigned int virq)
{
	struct irq_data *data = FUNC0(virq);
	unsigned int hw_irq;

	/* XXX Assign BAD number */
	if (!data)
		return;
	hw_irq = (unsigned int)FUNC1(data);
	if (hw_irq)
		FUNC2(virq);
}