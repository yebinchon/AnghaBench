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
typedef  void* u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_4__ {void* deftype; int /*<<< orphan*/ * fixed_ranges; } ;
struct TYPE_3__ {void* pat; TYPE_2__ mtrr_state; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 scalar_t__ MSR_IA32_CR_PAT ; 
 scalar_t__ MSR_MTRRdefType ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,scalar_t__) ; 

int FUNC4(struct kvm_vcpu *vcpu, u32 msr, u64 data)
{
	int index;

	if (!FUNC1(vcpu, msr, data))
		return 1;

	index = FUNC0(msr);
	if (index >= 0)
		*(u64 *)&vcpu->arch.mtrr_state.fixed_ranges[index] = data;
	else if (msr == MSR_MTRRdefType)
		vcpu->arch.mtrr_state.deftype = data;
	else if (msr == MSR_IA32_CR_PAT)
		vcpu->arch.pat = data;
	else
		FUNC2(vcpu, msr, data);

	FUNC3(vcpu, msr);
	return 0;
}