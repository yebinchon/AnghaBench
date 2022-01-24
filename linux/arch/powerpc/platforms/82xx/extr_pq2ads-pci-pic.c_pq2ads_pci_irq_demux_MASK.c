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
typedef  int u32 ;
struct pq2ads_pci_pic {int /*<<< orphan*/  host; TYPE_1__* regs; } ;
struct irq_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct pq2ads_pci_pic* FUNC2 (struct irq_desc*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct irq_desc *desc)
{
	struct pq2ads_pci_pic *priv = FUNC2(desc);
	u32 stat, mask, pend;
	int bit;

	for (;;) {
		stat = FUNC1(&priv->regs->stat);
		mask = FUNC1(&priv->regs->mask);

		pend = stat & ~mask;

		if (!pend)
			break;

		for (bit = 0; pend != 0; ++bit, pend <<= 1) {
			if (pend & 0x80000000) {
				int virq = FUNC3(priv->host, bit);
				FUNC0(virq);
			}
		}
	}
}