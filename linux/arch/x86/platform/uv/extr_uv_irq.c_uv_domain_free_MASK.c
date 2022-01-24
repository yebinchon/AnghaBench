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
struct irq_data {int /*<<< orphan*/  chip_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_MOVE_PCNTXT ; 
 int /*<<< orphan*/  IRQ_NO_BALANCING ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int,unsigned int) ; 
 struct irq_data* FUNC3 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct irq_domain *domain, unsigned int virq,
			   unsigned int nr_irqs)
{
	struct irq_data *irq_data = FUNC3(domain, virq);

	FUNC0(nr_irqs != 1);
	FUNC4(irq_data->chip_data);
	FUNC1(virq, IRQ_MOVE_PCNTXT);
	FUNC1(virq, IRQ_NO_BALANCING);
	FUNC2(domain, virq, nr_irqs);
}