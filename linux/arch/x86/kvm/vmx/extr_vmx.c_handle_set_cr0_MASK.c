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
struct vmcs12 {unsigned long cr0_guest_host_mask; unsigned long guest_cr0; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {scalar_t__ vmxon; } ;
struct TYPE_4__ {TYPE_1__ nested; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR0_READ_SHADOW ; 
 struct vmcs12* FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,unsigned long) ; 
 TYPE_2__* FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu, unsigned long val)
{
	if (FUNC1(vcpu)) {
		struct vmcs12 *vmcs12 = FUNC0(vcpu);
		unsigned long orig_val = val;

		/*
		 * We get here when L2 changed cr0 in a way that did not change
		 * any of L1's shadowed bits (see nested_vmx_exit_handled_cr),
		 * but did change L0 shadowed bits. So we first calculate the
		 * effective cr0 value that L1 would like to write into the
		 * hardware. It consists of the L2-owned bits from the new
		 * value combined with the L1-owned bits from L1's guest_cr0.
		 */
		val = (val & ~vmcs12->cr0_guest_host_mask) |
			(vmcs12->guest_cr0 & vmcs12->cr0_guest_host_mask);

		if (!FUNC3(vcpu, val))
			return 1;

		if (FUNC2(vcpu, val))
			return 1;
		FUNC6(CR0_READ_SHADOW, orig_val);
		return 0;
	} else {
		if (FUNC5(vcpu)->nested.vmxon &&
		    !FUNC4(vcpu, val))
			return 1;

		return FUNC2(vcpu, val);
	}
}