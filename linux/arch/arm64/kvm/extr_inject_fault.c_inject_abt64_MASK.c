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
typedef  unsigned long u32 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESR_EL1 ; 
 unsigned long ESR_ELx_EC_DABT_LOW ; 
 unsigned long ESR_ELx_EC_IABT_CUR ; 
 unsigned long ESR_ELx_EC_IABT_LOW ; 
 unsigned long ESR_ELx_EC_SHIFT ; 
 unsigned long ESR_ELx_FSC_EXTABT ; 
 unsigned long ESR_ELx_IL ; 
 int /*<<< orphan*/  FAR_EL1 ; 
 unsigned long PSR_MODE_EL0t ; 
 unsigned long PSR_MODE_MASK ; 
 unsigned long PSTATE_FAULT_BITS_64 ; 
 int /*<<< orphan*/  except_type_sync ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 unsigned long* FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/ * FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct kvm_vcpu *vcpu, bool is_iabt, unsigned long addr)
{
	unsigned long cpsr = *FUNC2(vcpu);
	bool is_aarch32 = FUNC3(vcpu);
	u32 esr = 0;

	FUNC5(vcpu, *FUNC4(vcpu));
	*FUNC4(vcpu) = FUNC0(vcpu, except_type_sync);

	*FUNC2(vcpu) = PSTATE_FAULT_BITS_64;
	FUNC6(vcpu, cpsr);

	FUNC7(vcpu, addr, FAR_EL1);

	/*
	 * Build an {i,d}abort, depending on the level and the
	 * instruction set. Report an external synchronous abort.
	 */
	if (FUNC1(vcpu))
		esr |= ESR_ELx_IL;

	/*
	 * Here, the guest runs in AArch64 mode when in EL1. If we get
	 * an AArch32 fault, it means we managed to trap an EL0 fault.
	 */
	if (is_aarch32 || (cpsr & PSR_MODE_MASK) == PSR_MODE_EL0t)
		esr |= (ESR_ELx_EC_IABT_LOW << ESR_ELx_EC_SHIFT);
	else
		esr |= (ESR_ELx_EC_IABT_CUR << ESR_ELx_EC_SHIFT);

	if (!is_iabt)
		esr |= ESR_ELx_EC_DABT_LOW << ESR_ELx_EC_SHIFT;

	FUNC7(vcpu, esr | ESR_ELx_FSC_EXTABT, ESR_EL1);
}