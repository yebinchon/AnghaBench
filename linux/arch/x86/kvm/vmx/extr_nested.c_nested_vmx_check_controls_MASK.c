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
struct vmcs12 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*,struct vmcs12*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*,struct vmcs12*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*,struct vmcs12*) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu,
				     struct vmcs12 *vmcs12)
{
	if (FUNC1(vcpu, vmcs12) ||
	    FUNC2(vcpu, vmcs12) ||
	    FUNC0(vcpu, vmcs12))
		return -EINVAL;

	return 0;
}