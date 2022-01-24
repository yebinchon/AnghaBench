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
struct irq_chip {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  cpu_interrupt_type ; 
 int /*<<< orphan*/  handle_percpu_irq ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct irq_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,void*) ; 

int FUNC5(unsigned int irq, struct irq_chip *type, void *data)
{
	if (FUNC2(irq))
		return -EBUSY;
	if (FUNC1(irq) != &cpu_interrupt_type)
		return -EBUSY;

	/* for iosapic interrupts */
	if (type) {
		FUNC3(irq, type, handle_percpu_irq);
		FUNC4(irq, data);
		FUNC0(irq);
	}
	return 0;
}