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
struct uic {int dummy; } ;
struct irq_domain {struct uic* host_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct uic*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uic_irq_chip ; 

__attribute__((used)) static int FUNC3(struct irq_domain *h, unsigned int virq,
			irq_hw_number_t hw)
{
	struct uic *uic = h->host_data;

	FUNC1(virq, uic);
	/* Despite the name, handle_level_irq() works for both level
	 * and edge irqs on UIC.  FIXME: check this is correct */
	FUNC0(virq, &uic_irq_chip, handle_level_irq);

	/* Set default irq type */
	FUNC2(virq, IRQ_TYPE_NONE);

	return 0;
}