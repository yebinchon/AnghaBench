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
struct TYPE_2__ {int emulate_regs_need_sync_to_vcpu; int /*<<< orphan*/  emulate_ctxt; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_regs {int /*<<< orphan*/  rflags; int /*<<< orphan*/  rip; int /*<<< orphan*/  r15; int /*<<< orphan*/  r14; int /*<<< orphan*/  r13; int /*<<< orphan*/  r12; int /*<<< orphan*/  r11; int /*<<< orphan*/  r10; int /*<<< orphan*/  r9; int /*<<< orphan*/  r8; int /*<<< orphan*/  rbp; int /*<<< orphan*/  rsp; int /*<<< orphan*/  rdi; int /*<<< orphan*/  rsi; int /*<<< orphan*/  rdx; int /*<<< orphan*/  rcx; int /*<<< orphan*/  rbx; int /*<<< orphan*/  rax; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC19(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
	if (vcpu->arch.emulate_regs_need_sync_to_vcpu) {
		/*
		 * We are here if userspace calls get_regs() in the middle of
		 * instruction emulation. Registers state needs to be copied
		 * back from emulation context to vcpu. Userspace shouldn't do
		 * that usually, but some bad designed PV devices (vmware
		 * backdoor interface) need this to work
		 */
		FUNC0(&vcpu->arch.emulate_ctxt);
		vcpu->arch.emulate_regs_need_sync_to_vcpu = false;
	}
	regs->rax = FUNC10(vcpu);
	regs->rbx = FUNC12(vcpu);
	regs->rcx = FUNC13(vcpu);
	regs->rdx = FUNC15(vcpu);
	regs->rsi = FUNC17(vcpu);
	regs->rdi = FUNC14(vcpu);
	regs->rsp = FUNC18(vcpu);
	regs->rbp = FUNC11(vcpu);
#ifdef CONFIG_X86_64
	regs->r8 = kvm_r8_read(vcpu);
	regs->r9 = kvm_r9_read(vcpu);
	regs->r10 = kvm_r10_read(vcpu);
	regs->r11 = kvm_r11_read(vcpu);
	regs->r12 = kvm_r12_read(vcpu);
	regs->r13 = kvm_r13_read(vcpu);
	regs->r14 = kvm_r14_read(vcpu);
	regs->r15 = kvm_r15_read(vcpu);
#endif

	regs->rip = FUNC16(vcpu);
	regs->rflags = FUNC1(vcpu);
}