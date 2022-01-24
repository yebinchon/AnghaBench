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
struct vmcs12 {int /*<<< orphan*/  apic_access_addr; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES ; 
 scalar_t__ FUNC1 (struct vmcs12*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu,
					  struct vmcs12 *vmcs12)
{
	if (FUNC1(vmcs12, SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES) &&
	    FUNC0(!FUNC2(vcpu, vmcs12->apic_access_addr)))
		return -EINVAL;
	else
		return 0;
}