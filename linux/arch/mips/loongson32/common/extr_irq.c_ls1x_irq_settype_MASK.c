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
struct irq_data {int irq; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IRQ_TYPE_EDGE_BOTH 133 
#define  IRQ_TYPE_EDGE_FALLING 132 
#define  IRQ_TYPE_EDGE_RISING 131 
#define  IRQ_TYPE_LEVEL_HIGH 130 
#define  IRQ_TYPE_LEVEL_LOW 129 
#define  IRQ_TYPE_NONE 128 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int LS1X_IRQ_BASE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct irq_data *d, unsigned int type)
{
	unsigned int bit = (d->irq - LS1X_IRQ_BASE) & 0x1f;
	unsigned int n = (d->irq - LS1X_IRQ_BASE) >> 5;

	switch (type) {
	case IRQ_TYPE_LEVEL_HIGH:
		FUNC3(FUNC2(FUNC1(n))
			| (1 << bit), FUNC1(n));
		FUNC3(FUNC2(FUNC0(n))
			& ~(1 << bit), FUNC0(n));
		break;
	case IRQ_TYPE_LEVEL_LOW:
		FUNC3(FUNC2(FUNC1(n))
			& ~(1 << bit), FUNC1(n));
		FUNC3(FUNC2(FUNC0(n))
			& ~(1 << bit), FUNC0(n));
		break;
	case IRQ_TYPE_EDGE_RISING:
		FUNC3(FUNC2(FUNC1(n))
			| (1 << bit), FUNC1(n));
		FUNC3(FUNC2(FUNC0(n))
			| (1 << bit), FUNC0(n));
		break;
	case IRQ_TYPE_EDGE_FALLING:
		FUNC3(FUNC2(FUNC1(n))
			& ~(1 << bit), FUNC1(n));
		FUNC3(FUNC2(FUNC0(n))
			| (1 << bit), FUNC0(n));
		break;
	case IRQ_TYPE_EDGE_BOTH:
		FUNC3(FUNC2(FUNC1(n))
			& ~(1 << bit), FUNC1(n));
		FUNC3(FUNC2(FUNC0(n))
			| (1 << bit), FUNC0(n));
		break;
	case IRQ_TYPE_NONE:
		break;
	default:
		return -EINVAL;
	}

	return 0;
}