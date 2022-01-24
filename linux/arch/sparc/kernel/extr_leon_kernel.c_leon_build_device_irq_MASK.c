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
struct irq_desc {scalar_t__ handle_irq; } ;
typedef  int /*<<< orphan*/  irq_flow_handler_t ;

/* Variables and functions */
 unsigned long LEON_DO_ACK_HW ; 
 scalar_t__ handle_bad_irq ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,void*) ; 
 struct irq_desc* FUNC3 (unsigned int) ; 
 unsigned long FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  leon_irq ; 

unsigned int FUNC5(unsigned int real_irq,
				    irq_flow_handler_t flow_handler,
				    const char *name, int do_ack)
{
	unsigned int irq;
	unsigned long mask;
	struct irq_desc *desc;

	irq = 0;
	mask = FUNC4(real_irq);
	if (mask == 0)
		goto out;

	irq = FUNC0(real_irq, real_irq);
	if (irq == 0)
		goto out;

	if (do_ack)
		mask |= LEON_DO_ACK_HW;

	desc = FUNC3(irq);
	if (!desc || !desc->handle_irq || desc->handle_irq == handle_bad_irq) {
		FUNC1(irq, &leon_irq,
					      flow_handler, name);
		FUNC2(irq, (void *)mask);
	}

out:
	return irq;
}