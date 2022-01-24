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
struct vmcs12 {unsigned long long vmcs_link_pointer; } ;
struct TYPE_2__ {int /*<<< orphan*/  kvm; } ;
struct vcpu_vmx {TYPE_1__ vcpu; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCS12_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmcs12*) ; 
 struct vcpu_vmx* FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu,
					      struct vmcs12 *vmcs12)
{
	struct vcpu_vmx *vmx = FUNC3(vcpu);

	if (!FUNC2(vmcs12) ||
	    vmcs12->vmcs_link_pointer == -1ull)
		return;

	FUNC1(vmx->vcpu.kvm, vmcs12->vmcs_link_pointer,
			FUNC0(vcpu), VMCS12_SIZE);
}