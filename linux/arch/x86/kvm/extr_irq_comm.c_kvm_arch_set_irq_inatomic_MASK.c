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
struct kvm_kernel_irq_routing_entry {int type; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EWOULDBLOCK ; 
#define  KVM_IRQ_ROUTING_HV_SINT 129 
#define  KVM_IRQ_ROUTING_MSI 128 
 int FUNC0 (struct kvm_kernel_irq_routing_entry*,struct kvm*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,int /*<<< orphan*/ *,struct kvm_lapic_irq*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,struct kvm_kernel_irq_routing_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,struct kvm_kernel_irq_routing_entry*,struct kvm_lapic_irq*) ; 

int FUNC4(struct kvm_kernel_irq_routing_entry *e,
			      struct kvm *kvm, int irq_source_id, int level,
			      bool line_status)
{
	struct kvm_lapic_irq irq;
	int r;

	switch (e->type) {
	case KVM_IRQ_ROUTING_HV_SINT:
		return FUNC0(e, kvm, irq_source_id, level,
				       line_status);

	case KVM_IRQ_ROUTING_MSI:
		if (FUNC2(kvm, e))
			return -EINVAL;

		FUNC3(kvm, e, &irq);

		if (FUNC1(kvm, NULL, &irq, &r, NULL))
			return r;
		break;

	default:
		break;
	}

	return -EWOULDBLOCK;
}