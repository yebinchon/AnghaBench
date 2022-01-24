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
struct orion_gpio_chip {int secondary_irq_base; } ;
struct irq_data {int hwirq; } ;
struct irq_chip_type {int type; } ;
struct irq_chip_generic {struct orion_gpio_chip* private; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct orion_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct orion_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct orion_gpio_chip*) ; 
 int IRQ_TYPE_EDGE_BOTH ; 
 int IRQ_TYPE_EDGE_FALLING ; 
 int IRQ_TYPE_EDGE_RISING ; 
 int IRQ_TYPE_LEVEL_HIGH ; 
 int IRQ_TYPE_LEVEL_LOW ; 
 int IRQ_TYPE_NONE ; 
 int IRQ_TYPE_SENSE_MASK ; 
 struct irq_chip_type* FUNC3 (struct irq_data*) ; 
 struct irq_chip_generic* FUNC4 (struct irq_data*) ; 
 scalar_t__ FUNC5 (struct irq_data*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct irq_data *d, u32 type)
{
	struct irq_chip_generic *gc = FUNC4(d);
	struct irq_chip_type *ct = FUNC3(d);
	struct orion_gpio_chip *ochip = gc->private;
	int pin;
	u32 u;

	pin = d->hwirq - ochip->secondary_irq_base;

	u = FUNC6(FUNC2(ochip)) & (1 << pin);
	if (!u) {
		return -EINVAL;
	}

	type &= IRQ_TYPE_SENSE_MASK;
	if (type == IRQ_TYPE_NONE)
		return -EINVAL;

	/* Check if we need to change chip and handler */
	if (!(ct->type & type))
		if (FUNC5(d, type))
			return -EINVAL;

	/*
	 * Configure interrupt polarity.
	 */
	if (type == IRQ_TYPE_EDGE_RISING || type == IRQ_TYPE_LEVEL_HIGH) {
		u = FUNC6(FUNC1(ochip));
		u &= ~(1 << pin);
		FUNC7(u, FUNC1(ochip));
	} else if (type == IRQ_TYPE_EDGE_FALLING || type == IRQ_TYPE_LEVEL_LOW) {
		u = FUNC6(FUNC1(ochip));
		u |= 1 << pin;
		FUNC7(u, FUNC1(ochip));
	} else if (type == IRQ_TYPE_EDGE_BOTH) {
		u32 v;

		v = FUNC6(FUNC1(ochip)) ^ FUNC6(FUNC0(ochip));

		/*
		 * set initial polarity based on current input level
		 */
		u = FUNC6(FUNC1(ochip));
		if (v & (1 << pin))
			u |= 1 << pin;		/* falling */
		else
			u &= ~(1 << pin);	/* rising */
		FUNC7(u, FUNC1(ochip));
	}
	return 0;
}