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
typedef  int /*<<< orphan*/  ulong ;
struct vcpu_vmx {int dummy; } ;
struct TYPE_2__ {unsigned long cr0; int /*<<< orphan*/  regs_avail; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int CPU_BASED_CR3_LOAD_EXITING ; 
 int CPU_BASED_CR3_STORE_EXITING ; 
 int /*<<< orphan*/  VCPU_EXREG_CR3 ; 
 unsigned long X86_CR0_PG ; 
 unsigned long X86_CR0_WP ; 
 int /*<<< orphan*/  FUNC0 (struct vcpu_vmx*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_vmx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vcpu_vmx* FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(unsigned long *hw_cr0,
					unsigned long cr0,
					struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC5(vcpu);

	if (!FUNC4(VCPU_EXREG_CR3, (ulong *)&vcpu->arch.regs_avail))
		FUNC6(vcpu);
	if (!(cr0 & X86_CR0_PG)) {
		/* From paging/starting to nonpaging */
		FUNC1(vmx, CPU_BASED_CR3_LOAD_EXITING |
					  CPU_BASED_CR3_STORE_EXITING);
		vcpu->arch.cr0 = cr0;
		FUNC7(vcpu, FUNC3(vcpu));
	} else if (!FUNC2(vcpu)) {
		/* From nonpaging to paging */
		FUNC0(vmx, CPU_BASED_CR3_LOAD_EXITING |
					    CPU_BASED_CR3_STORE_EXITING);
		vcpu->arch.cr0 = cr0;
		FUNC7(vcpu, FUNC3(vcpu));
	}

	if (!(cr0 & X86_CR0_WP))
		*hw_cr0 &= ~X86_CR0_WP;
}