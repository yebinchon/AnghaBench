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
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_LEVEL ; 
 int /*<<< orphan*/  handle_fasteoi_irq ; 
 int /*<<< orphan*/  handle_percpu_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xive_ipi_chip ; 
 int FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  xive_irq_chip ; 

__attribute__((used)) static int FUNC3(struct irq_domain *h, unsigned int virq,
			       irq_hw_number_t hw)
{
	int rc;

	/*
	 * Mark interrupts as edge sensitive by default so that resend
	 * actually works. Will fix that up below if needed.
	 */
	FUNC0(virq, IRQ_LEVEL);

#ifdef CONFIG_SMP
	/* IPIs are special and come up with HW number 0 */
	if (hw == 0) {
		/*
		 * IPIs are marked per-cpu. We use separate HW interrupts under
		 * the hood but associated with the same "linux" interrupt
		 */
		irq_set_chip_and_handler(virq, &xive_ipi_chip,
					 handle_percpu_irq);
		return 0;
	}
#endif

	rc = FUNC2(virq, hw);
	if (rc)
		return rc;

	FUNC1(virq, &xive_irq_chip, handle_fasteoi_irq);

	return 0;
}