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
struct TYPE_4__ {struct vcpu_vmx* guest_fpu; struct vcpu_vmx* user_fpu; } ;
struct TYPE_3__ {TYPE_2__ arch; } ;
struct vcpu_vmx {TYPE_1__ vcpu; int /*<<< orphan*/  guest_msrs; int /*<<< orphan*/  loaded_vmcs; int /*<<< orphan*/  vpid; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ enable_pml ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct vcpu_vmx*) ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 struct vcpu_vmx* FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  x86_fpu_cache ; 

__attribute__((used)) static void FUNC8(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC6(vcpu);

	if (enable_pml)
		FUNC7(vmx);
	FUNC1(vmx->vpid);
	FUNC5(vcpu);
	FUNC0(vmx->loaded_vmcs);
	FUNC2(vmx->guest_msrs);
	FUNC4(vcpu);
	FUNC3(x86_fpu_cache, vmx->vcpu.arch.user_fpu);
	FUNC3(x86_fpu_cache, vmx->vcpu.arch.guest_fpu);
	FUNC3(kvm_vcpu_cache, vmx);
}