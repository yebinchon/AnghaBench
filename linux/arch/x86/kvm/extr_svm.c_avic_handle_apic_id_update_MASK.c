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
typedef  unsigned long long u64 ;
typedef  scalar_t__ u32 ;
struct vcpu_svm {unsigned long long* avic_physical_id_cache; scalar_t__ ldr_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  apic; } ;
struct kvm_vcpu {scalar_t__ vcpu_id; TYPE_1__ arch; } ;

/* Variables and functions */
 unsigned long long* FUNC0 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct vcpu_svm* FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu)
{
	u64 *old, *new;
	struct vcpu_svm *svm = FUNC3(vcpu);
	u32 id = FUNC2(vcpu->arch.apic);

	if (vcpu->vcpu_id == id)
		return 0;

	old = FUNC0(vcpu, vcpu->vcpu_id);
	new = FUNC0(vcpu, id);
	if (!new || !old)
		return 1;

	/* We need to move physical_id_entry to new offset */
	*new = *old;
	*old = 0ULL;
	FUNC3(vcpu)->avic_physical_id_cache = new;

	/*
	 * Also update the guest physical APIC ID in the logical
	 * APIC ID table entry if already setup the LDR.
	 */
	if (svm->ldr_reg)
		FUNC1(vcpu);

	return 0;
}