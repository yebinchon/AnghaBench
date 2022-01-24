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
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {unsigned long pc; struct kvm_mips_tlb* guest_tlb; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mips_tlb {int /*<<< orphan*/ * tlb_lo; int /*<<< orphan*/  tlb_hi; int /*<<< orphan*/  tlb_mask; } ;
typedef  enum emulation_result { ____Placeholder_emulation_result } emulation_result ;

/* Variables and functions */
 int EMULATE_DONE ; 
 int /*<<< orphan*/  KVM_MIPS_GUEST_TLB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,struct kvm_mips_tlb*) ; 
 int /*<<< orphan*/  FUNC2 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mips_coproc*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

enum emulation_result FUNC7(struct kvm_vcpu *vcpu)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	struct kvm_mips_tlb *tlb = NULL;
	unsigned long pc = vcpu->arch.pc;
	int index;

	index = FUNC6(KVM_MIPS_GUEST_TLB_SIZE);
	tlb = &vcpu->arch.guest_tlb[index];

	FUNC1(vcpu, tlb);

	tlb->tlb_mask = FUNC5(cop0);
	tlb->tlb_hi = FUNC2(cop0);
	tlb->tlb_lo[0] = FUNC3(cop0);
	tlb->tlb_lo[1] = FUNC4(cop0);

	FUNC0("[%#lx] COP0_TLBWR[%d] (entryhi: %#lx, entrylo0: %#lx entrylo1: %#lx)\n",
		  pc, index, FUNC2(cop0),
		  FUNC3(cop0),
		  FUNC4(cop0));

	return EMULATE_DONE;
}