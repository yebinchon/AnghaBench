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
typedef  scalar_t__ u64 ;
struct vmcs12 {int cpu_based_vm_exec_control; scalar_t__ tsc_offset; } ;
struct TYPE_2__ {scalar_t__ tsc_offset; } ;
struct kvm_vcpu {TYPE_1__ arch; int /*<<< orphan*/  vcpu_id; } ;

/* Variables and functions */
 int CPU_BASED_USE_TSC_OFFSETING ; 
 int /*<<< orphan*/  TSC_OFFSET ; 
 struct vmcs12* FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static u64 FUNC4(struct kvm_vcpu *vcpu, u64 offset)
{
	struct vmcs12 *vmcs12 = FUNC0(vcpu);
	u64 g_tsc_offset = 0;

	/*
	 * We're here if L1 chose not to trap WRMSR to TSC. According
	 * to the spec, this should set L1's TSC; The offset that L1
	 * set for L2 remains unchanged, and still needs to be added
	 * to the newly set TSC to get L2's TSC.
	 */
	if (FUNC1(vcpu) &&
	    (vmcs12->cpu_based_vm_exec_control & CPU_BASED_USE_TSC_OFFSETING))
		g_tsc_offset = vmcs12->tsc_offset;

	FUNC2(vcpu->vcpu_id,
				   vcpu->arch.tsc_offset - g_tsc_offset,
				   offset);
	FUNC3(TSC_OFFSET, offset + g_tsc_offset);
	return offset + g_tsc_offset;
}