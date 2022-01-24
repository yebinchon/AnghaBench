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
typedef  int u32 ;
struct uic {int /*<<< orphan*/  lock; scalar_t__ dcrbase; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ UIC_ER ; 
 scalar_t__ UIC_SR ; 
 struct uic* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 unsigned int FUNC2 (struct irq_data*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct irq_data *d)
{
	struct uic *uic = FUNC0(d);
	unsigned int src = FUNC2(d);
	unsigned long flags;
	u32 er, sr;

	sr = 1 << (31-src);
	FUNC5(&uic->lock, flags);
	er = FUNC3(uic->dcrbase + UIC_ER);
	er &= ~sr;
	FUNC4(uic->dcrbase + UIC_ER, er);
 	/* On the UIC, acking (i.e. clearing the SR bit)
	 * a level irq will have no effect if the interrupt
	 * is still asserted by the device, even if
	 * the interrupt is already masked. Therefore
	 * we only ack the egde interrupts here, while
	 * level interrupts are ack'ed after the actual
	 * isr call in the uic_unmask_irq()
	 */
	if (!FUNC1(d))
		FUNC4(uic->dcrbase + UIC_SR, sr);
	FUNC6(&uic->lock, flags);
}