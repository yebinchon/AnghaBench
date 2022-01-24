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
struct sa1111 {int dummy; } ;
struct irq_domain {struct sa1111* host_data; } ;
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ AUDXMTDMADONEA ; 
 int EINVAL ; 
 int IRQ_NOPROBE ; 
 int IRQ_NOREQUEST ; 
 scalar_t__ SSPROR ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct sa1111*) ; 
 int /*<<< orphan*/  sa1111_irq_chip ; 

__attribute__((used)) static int FUNC3(struct irq_domain *d, unsigned int irq,
	irq_hw_number_t hwirq)
{
	struct sa1111 *sachip = d->host_data;

	/* Disallow unavailable interrupts */
	if (hwirq > SSPROR && hwirq < AUDXMTDMADONEA)
		return -EINVAL;

	FUNC2(irq, sachip);
	FUNC1(irq, &sa1111_irq_chip, handle_edge_irq);
	FUNC0(irq, IRQ_NOREQUEST | IRQ_NOPROBE);

	return 0;
}