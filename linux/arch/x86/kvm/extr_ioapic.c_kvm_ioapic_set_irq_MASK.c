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
struct kvm_ioapic {int /*<<< orphan*/  lock; int /*<<< orphan*/ * irq_states; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IOAPIC_NUM_PINS ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (struct kvm_ioapic*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct kvm_ioapic *ioapic, int irq, int irq_source_id,
		       int level, bool line_status)
{
	int ret, irq_level;

	FUNC0(irq < 0 || irq >= IOAPIC_NUM_PINS);

	FUNC3(&ioapic->lock);
	irq_level = FUNC1(&ioapic->irq_states[irq],
					 irq_source_id, level);
	ret = FUNC2(ioapic, irq, irq_level, line_status);

	FUNC4(&ioapic->lock);

	return ret;
}