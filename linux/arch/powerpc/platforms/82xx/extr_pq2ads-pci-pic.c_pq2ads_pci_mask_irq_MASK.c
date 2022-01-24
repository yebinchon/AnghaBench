#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pq2ads_pci_pic {TYPE_1__* regs; } ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 int NUM_IRQS ; 
 struct pq2ads_pci_pic* FUNC0 (struct irq_data*) ; 
 int FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  pci_pic_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	struct pq2ads_pci_pic *priv = FUNC0(d);
	int irq = NUM_IRQS - FUNC1(d) - 1;

	if (irq != -1) {
		unsigned long flags;
		FUNC3(&pci_pic_lock, flags);

		FUNC5(&priv->regs->mask, 1 << irq);
		FUNC2();

		FUNC4(&pci_pic_lock, flags);
	}
}