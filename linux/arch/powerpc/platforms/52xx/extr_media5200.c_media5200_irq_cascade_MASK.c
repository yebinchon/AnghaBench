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
struct irq_desc {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_data; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_unmask ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* irq_ack ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* irq_mask ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  irqhost; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ MEDIA5200_IRQ_ENABLE ; 
 int MEDIA5200_IRQ_SHIFT ; 
 scalar_t__ MEDIA5200_IRQ_STATUS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 struct irq_chip* FUNC3 (struct irq_desc*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__ media5200_irq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct irq_desc *desc)
{
	struct irq_chip *chip = FUNC3(desc);
	int sub_virq, val;
	u32 status, enable;

	/* Mask off the cascaded IRQ */
	FUNC6(&desc->lock);
	chip->irq_mask(&desc->irq_data);
	FUNC7(&desc->lock);

	/* Ask the FPGA for IRQ status.  If 'val' is 0, then no irqs
	 * are pending.  'ffs()' is 1 based */
	status = FUNC2(media5200_irq.regs + MEDIA5200_IRQ_ENABLE);
	enable = FUNC2(media5200_irq.regs + MEDIA5200_IRQ_STATUS);
	val = FUNC0((status & enable) >> MEDIA5200_IRQ_SHIFT);
	if (val) {
		sub_virq = FUNC4(media5200_irq.irqhost, val - 1);
		/* pr_debug("%s: virq=%i s=%.8x e=%.8x hwirq=%i subvirq=%i\n",
		 *          __func__, virq, status, enable, val - 1, sub_virq);
		 */
		FUNC1(sub_virq);
	}

	/* Processing done; can reenable the cascade now */
	FUNC6(&desc->lock);
	chip->irq_ack(&desc->irq_data);
	if (!FUNC5(&desc->irq_data))
		chip->irq_unmask(&desc->irq_data);
	FUNC7(&desc->lock);
}