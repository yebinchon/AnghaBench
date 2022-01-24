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
typedef  int /*<<< orphan*/  u32 ;
struct irq_stack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __do_softirq ; 
 struct irq_stack* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_stack_pointer ; 
 int /*<<< orphan*/  softirq_stack_ptr ; 

void FUNC2(void)
{
	struct irq_stack *irqstk;
	u32 *isp, *prev_esp;

	irqstk = FUNC0(softirq_stack_ptr);

	/* build the stack frame on the softirq stack */
	isp = (u32 *) ((char *)irqstk + sizeof(*irqstk));

	/* Push the previous esp onto the stack */
	prev_esp = (u32 *)irqstk;
	*prev_esp = current_stack_pointer;

	FUNC1(__do_softirq, isp);
}