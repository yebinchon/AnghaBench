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
struct kvm_vcpu {struct kvm* kvm; } ;
struct TYPE_2__ {unsigned long l1_ptcr; } ;
struct kvm {TYPE_1__ arch; int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 long H_PARAMETER ; 
 long H_SUCCESS ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PRTB_MASK ; 
 unsigned long PRTS_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*,unsigned long) ; 
 unsigned long FUNC1 (struct kvm_vcpu*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

long FUNC4(struct kvm_vcpu *vcpu)
{
	struct kvm *kvm = vcpu->kvm;
	unsigned long ptcr = FUNC1(vcpu, 4);
	int srcu_idx;
	long ret = H_SUCCESS;

	srcu_idx = FUNC2(&kvm->srcu);
	/*
	 * Limit the partition table to 4096 entries (because that's what
	 * hardware supports), and check the base address.
	 */
	if ((ptcr & PRTS_MASK) > 12 - 8 ||
	    !FUNC0(vcpu->kvm, (ptcr & PRTB_MASK) >> PAGE_SHIFT))
		ret = H_PARAMETER;
	FUNC3(&kvm->srcu, srcu_idx);
	if (ret == H_SUCCESS)
		kvm->arch.l1_ptcr = ptcr;
	return ret;
}