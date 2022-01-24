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
typedef  int /*<<< orphan*/  irq_flow_handler_t ;

/* Variables and functions */
 unsigned long LEON_DO_ACK_HW ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,void*) ; 
 int /*<<< orphan*/  leon_irq ; 

void FUNC3(unsigned int virq,
			      irq_flow_handler_t flow_handler,
			      const char *name, int do_ack)
{
	unsigned long mask = (unsigned long)FUNC0(virq);

	mask &= ~LEON_DO_ACK_HW;
	if (do_ack)
		mask |= LEON_DO_ACK_HW;

	FUNC1(virq, &leon_irq,
				      flow_handler, name);
	FUNC2(virq, (void *)mask);
}