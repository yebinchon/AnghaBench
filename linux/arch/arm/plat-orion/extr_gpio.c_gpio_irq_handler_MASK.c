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
struct TYPE_2__ {int ngpio; } ;
struct orion_gpio_chip {int secondary_irq_base; TYPE_1__ chip; } ;
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct orion_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct orion_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct orion_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct orion_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct orion_gpio_chip*) ; 
 int IRQ_TYPE_EDGE_BOTH ; 
 int IRQ_TYPE_SENSE_MASK ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct orion_gpio_chip* FUNC6 (struct irq_desc*) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct irq_desc *desc)
{
	struct orion_gpio_chip *ochip = FUNC6(desc);
	u32 cause, type;
	int i;

	if (ochip == NULL)
		return;

	cause = FUNC8(FUNC0(ochip)) & FUNC8(FUNC4(ochip));
	cause |= FUNC8(FUNC1(ochip)) & FUNC8(FUNC2(ochip));

	for (i = 0; i < ochip->chip.ngpio; i++) {
		int irq;

		irq = ochip->secondary_irq_base + i;

		if (!(cause & (1 << i)))
			continue;

		type = FUNC7(irq);
		if ((type & IRQ_TYPE_SENSE_MASK) == IRQ_TYPE_EDGE_BOTH) {
			/* Swap polarity (race with GPIO line) */
			u32 polarity;

			polarity = FUNC8(FUNC3(ochip));
			polarity ^= 1 << i;
			FUNC9(polarity, FUNC3(ochip));
		}
		FUNC5(irq);
	}
}