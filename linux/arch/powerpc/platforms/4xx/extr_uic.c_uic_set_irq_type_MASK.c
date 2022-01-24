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
 int EINVAL ; 
#define  IRQ_TYPE_EDGE_FALLING 132 
#define  IRQ_TYPE_EDGE_RISING 131 
#define  IRQ_TYPE_LEVEL_HIGH 130 
#define  IRQ_TYPE_LEVEL_LOW 129 
#define  IRQ_TYPE_NONE 128 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 scalar_t__ UIC_PR ; 
 scalar_t__ UIC_SR ; 
 scalar_t__ UIC_TR ; 
 struct uic* FUNC0 (struct irq_data*) ; 
 unsigned int FUNC1 (struct irq_data*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*) ; 

__attribute__((used)) static int FUNC7(struct irq_data *d, unsigned int flow_type)
{
	struct uic *uic = FUNC0(d);
	unsigned int src = FUNC1(d);
	unsigned long flags;
	int trigger, polarity;
	u32 tr, pr, mask;

	switch (flow_type & IRQ_TYPE_SENSE_MASK) {
	case IRQ_TYPE_NONE:
		FUNC6(d);
		return 0;

	case IRQ_TYPE_EDGE_RISING:
		trigger = 1; polarity = 1;
		break;
	case IRQ_TYPE_EDGE_FALLING:
		trigger = 1; polarity = 0;
		break;
	case IRQ_TYPE_LEVEL_HIGH:
		trigger = 0; polarity = 1;
		break;
	case IRQ_TYPE_LEVEL_LOW:
		trigger = 0; polarity = 0;
		break;
	default:
		return -EINVAL;
	}

	mask = ~(1 << (31 - src));

	FUNC4(&uic->lock, flags);
	tr = FUNC2(uic->dcrbase + UIC_TR);
	pr = FUNC2(uic->dcrbase + UIC_PR);
	tr = (tr & mask) | (trigger << (31-src));
	pr = (pr & mask) | (polarity << (31-src));

	FUNC3(uic->dcrbase + UIC_PR, pr);
	FUNC3(uic->dcrbase + UIC_TR, tr);
	FUNC3(uic->dcrbase + UIC_SR, ~mask);

	FUNC5(&uic->lock, flags);

	return 0;
}