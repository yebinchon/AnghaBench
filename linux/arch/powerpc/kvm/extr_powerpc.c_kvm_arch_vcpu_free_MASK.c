#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int irq_type; int /*<<< orphan*/  mpic; int /*<<< orphan*/  dec_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
#define  KVMPPC_IRQ_MPIC 130 
#define  KVMPPC_IRQ_XICS 129 
#define  KVMPPC_IRQ_XIVE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct kvm_vcpu *vcpu)
{
	/* Make sure we're not using the vcpu anymore */
	FUNC0(&vcpu->arch.dec_timer);

	FUNC3(vcpu);

	switch (vcpu->arch.irq_type) {
	case KVMPPC_IRQ_MPIC:
		FUNC2(vcpu->arch.mpic, vcpu);
		break;
	case KVMPPC_IRQ_XICS:
		if (FUNC7())
			FUNC5(vcpu);
		else
			FUNC4(vcpu);
		break;
	case KVMPPC_IRQ_XIVE:
		FUNC6(vcpu);
		break;
	}

	FUNC1(vcpu);
}