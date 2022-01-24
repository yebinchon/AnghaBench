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
 int GPIO_MAPPED_IRQ_BASE ; 
 int GPIO_MAPPED_IRQ_GROUP ; 
 scalar_t__ GROUP4_IRQ_BASE ; 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct irq_data *d,  unsigned type)
{
	int gpio = d->irq - GPIO_MAPPED_IRQ_BASE;
	int group = FUNC0(d->irq);

	if (group != GPIO_MAPPED_IRQ_GROUP || d->irq > (GROUP4_IRQ_BASE + 13))
		return (type == IRQ_TYPE_LEVEL_HIGH) ? 0 : -EINVAL;

	switch (type) {
	case IRQ_TYPE_LEVEL_HIGH:
		FUNC1(1, gpio);
		break;
	case IRQ_TYPE_LEVEL_LOW:
		FUNC1(0, gpio);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}