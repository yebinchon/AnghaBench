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
struct TYPE_3__ {int pending; } ;
struct TYPE_4__ {int emulate_regs_need_sync_from_vcpu; int emulate_regs_need_sync_to_vcpu; TYPE_1__ exception; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_regs {int rflags; int /*<<< orphan*/  rip; int /*<<< orphan*/  r15; int /*<<< orphan*/  r14; int /*<<< orphan*/  r13; int /*<<< orphan*/  r12; int /*<<< orphan*/  r11; int /*<<< orphan*/  r10; int /*<<< orphan*/  r9; int /*<<< orphan*/  r8; int /*<<< orphan*/  rbp; int /*<<< orphan*/  rsp; int /*<<< orphan*/  rdi; int /*<<< orphan*/  rsi; int /*<<< orphan*/  rdx; int /*<<< orphan*/  rcx; int /*<<< orphan*/  rbx; int /*<<< orphan*/  rax; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 int X86_EFLAGS_FIXED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static void FUNC19(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
	vcpu->arch.emulate_regs_need_sync_from_vcpu = true;
	vcpu->arch.emulate_regs_need_sync_to_vcpu = false;

	FUNC9(vcpu, regs->rax);
	FUNC11(vcpu, regs->rbx);
	FUNC12(vcpu, regs->rcx);
	FUNC14(vcpu, regs->rdx);
	FUNC16(vcpu, regs->rsi);
	FUNC13(vcpu, regs->rdi);
	FUNC17(vcpu, regs->rsp);
	FUNC10(vcpu, regs->rbp);
#ifdef CONFIG_X86_64
	kvm_r8_write(vcpu, regs->r8);
	kvm_r9_write(vcpu, regs->r9);
	kvm_r10_write(vcpu, regs->r10);
	kvm_r11_write(vcpu, regs->r11);
	kvm_r12_write(vcpu, regs->r12);
	kvm_r13_write(vcpu, regs->r13);
	kvm_r14_write(vcpu, regs->r14);
	kvm_r15_write(vcpu, regs->r15);
#endif

	FUNC15(vcpu, regs->rip);
	FUNC18(vcpu, regs->rflags | X86_EFLAGS_FIXED);

	vcpu->arch.exception.pending = false;

	FUNC0(KVM_REQ_EVENT, vcpu);
}