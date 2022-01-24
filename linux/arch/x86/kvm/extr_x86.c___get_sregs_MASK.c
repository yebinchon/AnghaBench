#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  nr; int /*<<< orphan*/  soft; scalar_t__ injected; } ;
struct TYPE_9__ {TYPE_3__ interrupt; int /*<<< orphan*/  efer; int /*<<< orphan*/  cr2; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;
struct TYPE_7__ {int /*<<< orphan*/  base; int /*<<< orphan*/  limit; } ;
struct TYPE_6__ {int /*<<< orphan*/  base; int /*<<< orphan*/  limit; } ;
struct kvm_sregs {scalar_t__ interrupt_bitmap; int /*<<< orphan*/  apic_base; int /*<<< orphan*/  efer; int /*<<< orphan*/  cr8; int /*<<< orphan*/  cr4; int /*<<< orphan*/  cr3; int /*<<< orphan*/  cr2; int /*<<< orphan*/  cr0; TYPE_2__ gdt; TYPE_1__ idt; int /*<<< orphan*/  ldt; int /*<<< orphan*/  tr; int /*<<< orphan*/  ss; int /*<<< orphan*/  gs; int /*<<< orphan*/  fs; int /*<<< orphan*/  es; int /*<<< orphan*/  ds; int /*<<< orphan*/  cs; } ;
struct desc_ptr {int /*<<< orphan*/  address; int /*<<< orphan*/  size; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* get_gdt ) (struct kvm_vcpu*,struct desc_ptr*) ;int /*<<< orphan*/  (* get_idt ) (struct kvm_vcpu*,struct desc_ptr*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  VCPU_SREG_CS ; 
 int /*<<< orphan*/  VCPU_SREG_DS ; 
 int /*<<< orphan*/  VCPU_SREG_ES ; 
 int /*<<< orphan*/  VCPU_SREG_FS ; 
 int /*<<< orphan*/  VCPU_SREG_GS ; 
 int /*<<< orphan*/  VCPU_SREG_LDTR ; 
 int /*<<< orphan*/  VCPU_SREG_SS ; 
 int /*<<< orphan*/  VCPU_SREG_TR ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 TYPE_5__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,struct desc_ptr*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,struct desc_ptr*) ; 

__attribute__((used)) static void FUNC10(struct kvm_vcpu *vcpu, struct kvm_sregs *sregs)
{
	struct desc_ptr dt;

	FUNC2(vcpu, &sregs->cs, VCPU_SREG_CS);
	FUNC2(vcpu, &sregs->ds, VCPU_SREG_DS);
	FUNC2(vcpu, &sregs->es, VCPU_SREG_ES);
	FUNC2(vcpu, &sregs->fs, VCPU_SREG_FS);
	FUNC2(vcpu, &sregs->gs, VCPU_SREG_GS);
	FUNC2(vcpu, &sregs->ss, VCPU_SREG_SS);

	FUNC2(vcpu, &sregs->tr, VCPU_SREG_TR);
	FUNC2(vcpu, &sregs->ldt, VCPU_SREG_LDTR);

	kvm_x86_ops->get_idt(vcpu, &dt);
	sregs->idt.limit = dt.size;
	sregs->idt.base = dt.address;
	kvm_x86_ops->get_gdt(vcpu, &dt);
	sregs->gdt.limit = dt.size;
	sregs->gdt.base = dt.address;

	sregs->cr0 = FUNC3(vcpu);
	sregs->cr2 = vcpu->arch.cr2;
	sregs->cr3 = FUNC4(vcpu);
	sregs->cr4 = FUNC5(vcpu);
	sregs->cr8 = FUNC1(vcpu);
	sregs->efer = vcpu->arch.efer;
	sregs->apic_base = FUNC0(vcpu);

	FUNC6(sregs->interrupt_bitmap, 0, sizeof(sregs->interrupt_bitmap));

	if (vcpu->arch.interrupt.injected && !vcpu->arch.interrupt.soft)
		FUNC7(vcpu->arch.interrupt.nr,
			(unsigned long *)sregs->interrupt_bitmap);
}