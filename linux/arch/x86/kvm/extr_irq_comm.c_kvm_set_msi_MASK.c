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
struct kvm_lapic_irq {int dummy; } ;
struct kvm_kernel_irq_routing_entry {int dummy; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct kvm*,int /*<<< orphan*/ *,struct kvm_lapic_irq*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct kvm*,struct kvm_kernel_irq_routing_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,struct kvm_kernel_irq_routing_entry*,struct kvm_lapic_irq*) ; 

int FUNC3(struct kvm_kernel_irq_routing_entry *e,
		struct kvm *kvm, int irq_source_id, int level, bool line_status)
{
	struct kvm_lapic_irq irq;

	if (FUNC1(kvm, e))
		return -EINVAL;

	if (!level)
		return -1;

	FUNC2(kvm, e, &irq);

	return FUNC0(kvm, NULL, &irq, NULL);
}