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
struct vmcs12 {unsigned long cr4_guest_host_mask; unsigned long guest_cr4; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR4_READ_SHADOW ; 
 struct vmcs12* FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu, unsigned long val)
{
	if (FUNC1(vcpu)) {
		struct vmcs12 *vmcs12 = FUNC0(vcpu);
		unsigned long orig_val = val;

		/* analogously to handle_set_cr0 */
		val = (val & ~vmcs12->cr4_guest_host_mask) |
			(vmcs12->guest_cr4 & vmcs12->cr4_guest_host_mask);
		if (FUNC2(vcpu, val))
			return 1;
		FUNC3(CR4_READ_SHADOW, orig_val);
		return 0;
	} else
		return FUNC2(vcpu, val);
}