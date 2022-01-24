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
struct vmx_msr_entry {scalar_t__ index; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EINVAL ; 
 scalar_t__ MSR_IA32_SMBASE ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*,struct vmx_msr_entry*) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu,
				      struct vmx_msr_entry *e)
{
	if (FUNC0(e->index == MSR_IA32_SMBASE) || /* SMM is not supported */
	    FUNC1(vcpu, e))
		return -EINVAL;
	return 0;
}