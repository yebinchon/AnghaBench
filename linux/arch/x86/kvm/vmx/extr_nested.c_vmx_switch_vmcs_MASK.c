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
struct vcpu_vmx {struct loaded_vmcs* loaded_vmcs; } ;
struct loaded_vmcs {int dummy; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct vcpu_vmx* FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC4 (struct vcpu_vmx*,struct loaded_vmcs*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu, struct loaded_vmcs *vmcs)
{
	struct vcpu_vmx *vmx = FUNC2(vcpu);
	struct loaded_vmcs *prev;
	int cpu;

	if (vmx->loaded_vmcs == vmcs)
		return;

	cpu = FUNC0();
	prev = vmx->loaded_vmcs;
	vmx->loaded_vmcs = vmcs;
	FUNC5(vcpu, cpu);
	FUNC4(vmx, prev);
	FUNC1();

	FUNC3(vmx);
}