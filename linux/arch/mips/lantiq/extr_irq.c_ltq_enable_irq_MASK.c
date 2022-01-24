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
struct irq_data {unsigned long hwirq; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 unsigned long INT_NUM_IM_OFFSET ; 
 int /*<<< orphan*/  LTQ_ICU_IER ; 
 unsigned long MIPS_CPU_IRQ_CASCADE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  ltq_icu_lock ; 
 int FUNC3 (int,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long,int,int /*<<< orphan*/ ) ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 

void FUNC9(struct irq_data *d)
{
	unsigned long offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
	unsigned long im = offset / INT_NUM_IM_OFFSET;
	unsigned long flags;
	int vpe;

	offset %= INT_NUM_IM_OFFSET;

	vpe = FUNC1(FUNC2(d));

	/* This shouldn't be even possible, maybe during CPU hotplug spam */
	if (FUNC8(vpe >= nr_cpu_ids))
		vpe = FUNC7();

	FUNC5(&ltq_icu_lock, flags);

	FUNC4(vpe, im, FUNC3(vpe, im, LTQ_ICU_IER) | FUNC0(offset),
		    LTQ_ICU_IER);

	FUNC6(&ltq_icu_lock, flags);
}