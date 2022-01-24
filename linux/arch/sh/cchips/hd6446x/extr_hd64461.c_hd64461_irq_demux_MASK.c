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
struct irq_desc {int dummy; } ;

/* Variables and functions */
 unsigned int HD64461_IRQBASE ; 
 int HD64461_IRQ_NUM ; 
 int /*<<< orphan*/  HD64461_NIRR ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(struct irq_desc *desc)
{
	unsigned short intv = FUNC0(HD64461_NIRR);
	unsigned int ext_irq = HD64461_IRQBASE;

	intv &= (1 << HD64461_IRQ_NUM) - 1;

	for (; intv; intv >>= 1, ext_irq++) {
		if (!(intv & 1))
			continue;

		FUNC1(ext_irq);
	}
}