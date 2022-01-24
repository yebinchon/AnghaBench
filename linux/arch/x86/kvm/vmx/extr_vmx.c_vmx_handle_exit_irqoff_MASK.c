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
struct vcpu_vmx {scalar_t__ exit_reason; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ EXIT_REASON_EXCEPTION_NMI ; 
 scalar_t__ EXIT_REASON_EXTERNAL_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 struct vcpu_vmx* FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC2(vcpu);

	if (vmx->exit_reason == EXIT_REASON_EXTERNAL_INTERRUPT)
		FUNC1(vcpu);
	else if (vmx->exit_reason == EXIT_REASON_EXCEPTION_NMI)
		FUNC0(vmx);
}