#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int load_eoi_exitmap_pending; int /*<<< orphan*/  ioapic_handled_vectors; scalar_t__ apicv_active; } ;
struct kvm_vcpu {TYPE_1__ arch; int /*<<< orphan*/  kvm; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* sync_pir_to_irr ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_LOAD_EOI_EXITMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 TYPE_2__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC9(struct kvm_vcpu *vcpu)
{
	if (!FUNC4(vcpu))
		return;

	FUNC0(vcpu->arch.ioapic_handled_vectors, 256);

	if (FUNC2(vcpu->kvm))
		FUNC7(vcpu, vcpu->arch.ioapic_handled_vectors);
	else {
		if (vcpu->arch.apicv_active)
			kvm_x86_ops->sync_pir_to_irr(vcpu);
		if (FUNC1(vcpu->kvm))
			FUNC5(vcpu, vcpu->arch.ioapic_handled_vectors);
	}

	if (FUNC3(vcpu))
		vcpu->arch.load_eoi_exitmap_pending = true;
	else
		FUNC6(KVM_REQ_LOAD_EOI_EXITMAP, vcpu);
}