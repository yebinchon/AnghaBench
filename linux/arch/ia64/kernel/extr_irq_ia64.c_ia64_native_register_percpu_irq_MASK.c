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
struct irqaction {int dummy; } ;
typedef  unsigned int ia64_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPU_MASK_ALL ; 
 int /*<<< orphan*/  IRQ_PER_CPU ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_percpu_irq ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irq_type_ia64_lsapic ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,struct irqaction*) ; 

void
FUNC6 (ia64_vector vec, struct irqaction *action)
{
	unsigned int irq;

	irq = vec;
	FUNC0(FUNC1(irq, vec, CPU_MASK_ALL));
	FUNC4(irq, IRQ_PER_CPU);
	FUNC2(irq, &irq_type_ia64_lsapic);
	if (action)
		FUNC5(irq, action);
	FUNC3(irq, handle_percpu_irq);
}