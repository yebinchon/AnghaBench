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
struct irq_data {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int IRQ_SET_MASK_OK_NOCOPY ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 unsigned int IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  VECPRI_POLARITY_MASK ; 
 int /*<<< orphan*/  VECPRI_SENSE_MASK ; 
 int /*<<< orphan*/  ehv_pic_lock ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct irq_data *d, unsigned int flow_type)
{
	unsigned int src = FUNC7(d->irq);
	unsigned int vecpri, vold, vnew, prio, cpu_dest;
	unsigned long flags;

	if (flow_type == IRQ_TYPE_NONE)
		flow_type = IRQ_TYPE_LEVEL_LOW;

	FUNC4(d, flow_type);

	vecpri = FUNC1(flow_type);

	FUNC5(&ehv_pic_lock, flags);
	FUNC2(src, &vold, &prio, &cpu_dest);
	vnew = vold & ~(FUNC0(VECPRI_POLARITY_MASK) |
			FUNC0(VECPRI_SENSE_MASK));
	vnew |= vecpri;

	/*
	 * TODO : Add specific interface call for platform to set
	 * individual interrupt priorities.
	 * platform currently using static/default priority for all ints
	 */

	prio = 8;

	FUNC3(src, vecpri, prio, cpu_dest);

	FUNC6(&ehv_pic_lock, flags);
	return IRQ_SET_MASK_OK_NOCOPY;
}