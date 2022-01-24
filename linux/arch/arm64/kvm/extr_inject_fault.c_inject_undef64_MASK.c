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
typedef  int u32 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESR_EL1 ; 
 int ESR_ELx_EC_SHIFT ; 
 int ESR_ELx_EC_UNKNOWN ; 
 int ESR_ELx_IL ; 
 unsigned long PSTATE_FAULT_BITS_64 ; 
 int /*<<< orphan*/  except_type_sync ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 unsigned long* FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/ * FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu)
{
	unsigned long cpsr = *FUNC2(vcpu);
	u32 esr = (ESR_ELx_EC_UNKNOWN << ESR_ELx_EC_SHIFT);

	FUNC4(vcpu, *FUNC3(vcpu));
	*FUNC3(vcpu) = FUNC0(vcpu, except_type_sync);

	*FUNC2(vcpu) = PSTATE_FAULT_BITS_64;
	FUNC5(vcpu, cpsr);

	/*
	 * Build an unknown exception, depending on the instruction
	 * set.
	 */
	if (FUNC1(vcpu))
		esr |= ESR_ELx_IL;

	FUNC6(vcpu, esr, ESR_EL1);
}