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
struct irq_data {unsigned int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  i8259_irq_lock ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct irq_data *d)
{
	unsigned int irq = d->irq;

	FUNC2(&i8259_irq_lock);
	FUNC0(irq);

	/* Ack the interrupt making it the lowest priority.  */
	if (irq >= 8) {
		FUNC1(0xE0 | (irq - 8), 0xa0);   /* ack the slave */
		irq = 2;
	}
	FUNC1(0xE0 | irq, 0x20);			/* ack the master */
	FUNC3(&i8259_irq_lock);
}