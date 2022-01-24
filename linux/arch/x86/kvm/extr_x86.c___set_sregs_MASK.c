#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
struct msr_data {int host_initiated; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {scalar_t__ cr3; scalar_t__ efer; scalar_t__ cr0; int /*<<< orphan*/  mp_state; int /*<<< orphan*/  walk_mmu; int /*<<< orphan*/  regs_avail; int /*<<< orphan*/  cr2; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_3__* kvm; } ;
struct TYPE_12__ {int selector; int base; } ;
struct TYPE_8__ {int /*<<< orphan*/  base; int /*<<< orphan*/  limit; } ;
struct TYPE_7__ {int /*<<< orphan*/  base; int /*<<< orphan*/  limit; } ;
struct kvm_sregs {scalar_t__ cr3; scalar_t__ efer; scalar_t__ cr0; int cr4; TYPE_6__ cs; TYPE_6__ ldt; TYPE_6__ tr; TYPE_6__ ss; TYPE_6__ gs; TYPE_6__ fs; TYPE_6__ es; TYPE_6__ ds; scalar_t__ interrupt_bitmap; int /*<<< orphan*/  cr8; int /*<<< orphan*/  cr2; TYPE_2__ gdt; TYPE_1__ idt; int /*<<< orphan*/  apic_base; } ;
struct desc_ptr {int /*<<< orphan*/  address; int /*<<< orphan*/  size; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* set_cr4 ) (struct kvm_vcpu*,int) ;int /*<<< orphan*/  (* set_cr0 ) (struct kvm_vcpu*,scalar_t__) ;int /*<<< orphan*/  (* set_efer ) (struct kvm_vcpu*,scalar_t__) ;int /*<<< orphan*/  (* set_gdt ) (struct kvm_vcpu*,struct desc_ptr*) ;int /*<<< orphan*/  (* set_idt ) (struct kvm_vcpu*,struct desc_ptr*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KVM_MP_STATE_RUNNABLE ; 
 int KVM_NR_INTERRUPTS ; 
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 int /*<<< orphan*/  VCPU_EXREG_CR3 ; 
 int /*<<< orphan*/  VCPU_SREG_CS ; 
 int /*<<< orphan*/  VCPU_SREG_DS ; 
 int /*<<< orphan*/  VCPU_SREG_ES ; 
 int /*<<< orphan*/  VCPU_SREG_FS ; 
 int /*<<< orphan*/  VCPU_SREG_GS ; 
 int /*<<< orphan*/  VCPU_SREG_LDTR ; 
 int /*<<< orphan*/  VCPU_SREG_SS ; 
 int /*<<< orphan*/  VCPU_SREG_TR ; 
 int X86_CR4_OSXSAVE ; 
 int X86_CR4_PKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned long const*,int) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int,int) ; 
 scalar_t__ FUNC7 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC8 (struct kvm_vcpu*) ; 
 int FUNC9 (struct kvm_vcpu*) ; 
 int FUNC10 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC11 (struct kvm_vcpu*,struct msr_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC15 (struct kvm_vcpu*,struct kvm_sregs*) ; 
 scalar_t__ FUNC16 (struct kvm_vcpu*) ; 
 TYPE_5__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (struct kvm_vcpu*,struct desc_ptr*) ; 
 int /*<<< orphan*/  FUNC22 (struct kvm_vcpu*,struct desc_ptr*) ; 
 int /*<<< orphan*/  FUNC23 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC27(struct kvm_vcpu *vcpu, struct kvm_sregs *sregs)
{
	struct msr_data apic_base_msr;
	int mmu_reset_needed = 0;
	int cpuid_update_needed = 0;
	int pending_vec, max_bits, idx;
	struct desc_ptr dt;
	int ret = -EINVAL;

	if (FUNC15(vcpu, sregs))
		goto out;

	apic_base_msr.data = sregs->apic_base;
	apic_base_msr.host_initiated = true;
	if (FUNC11(vcpu, &apic_base_msr))
		goto out;

	dt.size = sregs->idt.limit;
	dt.address = sregs->idt.base;
	kvm_x86_ops->set_idt(vcpu, &dt);
	dt.size = sregs->gdt.limit;
	dt.address = sregs->gdt.base;
	kvm_x86_ops->set_gdt(vcpu, &dt);

	vcpu->arch.cr2 = sregs->cr2;
	mmu_reset_needed |= FUNC8(vcpu) != sregs->cr3;
	vcpu->arch.cr3 = sregs->cr3;
	FUNC0(VCPU_EXREG_CR3, (ulong *)&vcpu->arch.regs_avail);

	FUNC12(vcpu, sregs->cr8);

	mmu_reset_needed |= vcpu->arch.efer != sregs->efer;
	kvm_x86_ops->set_efer(vcpu, sregs->efer);

	mmu_reset_needed |= FUNC7(vcpu) != sregs->cr0;
	kvm_x86_ops->set_cr0(vcpu, sregs->cr0);
	vcpu->arch.cr0 = sregs->cr0;

	mmu_reset_needed |= FUNC9(vcpu) != sregs->cr4;
	cpuid_update_needed |= ((FUNC9(vcpu) ^ sregs->cr4) &
				(X86_CR4_OSXSAVE | X86_CR4_PKE));
	kvm_x86_ops->set_cr4(vcpu, sregs->cr4);
	if (cpuid_update_needed)
		FUNC14(vcpu);

	idx = FUNC19(&vcpu->kvm->srcu);
	if (FUNC2(vcpu)) {
		FUNC17(vcpu, vcpu->arch.walk_mmu, FUNC8(vcpu));
		mmu_reset_needed = 1;
	}
	FUNC20(&vcpu->kvm->srcu, idx);

	if (mmu_reset_needed)
		FUNC5(vcpu);

	max_bits = KVM_NR_INTERRUPTS;
	pending_vec = FUNC1(
		(const unsigned long *)sregs->interrupt_bitmap, max_bits);
	if (pending_vec < max_bits) {
		FUNC6(vcpu, pending_vec, false);
		FUNC18("Set back pending irq %d\n", pending_vec);
	}

	FUNC13(vcpu, &sregs->cs, VCPU_SREG_CS);
	FUNC13(vcpu, &sregs->ds, VCPU_SREG_DS);
	FUNC13(vcpu, &sregs->es, VCPU_SREG_ES);
	FUNC13(vcpu, &sregs->fs, VCPU_SREG_FS);
	FUNC13(vcpu, &sregs->gs, VCPU_SREG_GS);
	FUNC13(vcpu, &sregs->ss, VCPU_SREG_SS);

	FUNC13(vcpu, &sregs->tr, VCPU_SREG_TR);
	FUNC13(vcpu, &sregs->ldt, VCPU_SREG_LDTR);

	FUNC26(vcpu);

	/* Older userspace won't unhalt the vcpu on reset. */
	if (FUNC16(vcpu) && FUNC10(vcpu) == 0xfff0 &&
	    sregs->cs.selector == 0xf000 && sregs->cs.base == 0xffff0000 &&
	    !FUNC3(vcpu))
		vcpu->arch.mp_state = KVM_MP_STATE_RUNNABLE;

	FUNC4(KVM_REQ_EVENT, vcpu);

	ret = 0;
out:
	return ret;
}