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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {unsigned long host_cp0_badvaddr; unsigned long pc; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_run {int dummy; } ;
typedef  enum emulation_result { ____Placeholder_emulation_result } emulation_result ;

/* Variables and functions */
 int EMULATE_DONE ; 
 int EMULATE_EXCEPT ; 
 int EMULATE_FAIL ; 
#define  KVM_MIPS_GPA 131 
#define  KVM_MIPS_GVA 130 
#define  KVM_MIPS_TLB 129 
#define  KVM_MIPS_TLBINV 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct kvm_run*,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct kvm_run*,struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static enum emulation_result FUNC6(int (*fn)(unsigned long),
						     unsigned long curr_pc,
						     unsigned long addr,
						     struct kvm_run *run,
						     struct kvm_vcpu *vcpu,
						     u32 cause)
{
	int err;

	for (;;) {
		/* Carefully attempt the cache operation */
		FUNC3(vcpu);
		err = fn(addr);
		FUNC4(vcpu);

		if (FUNC5(!err))
			return EMULATE_DONE;

		/*
		 * Try to handle the fault and retry, maybe we just raced with a
		 * GVA invalidation.
		 */
		switch (FUNC2(vcpu, addr, false)) {
		case KVM_MIPS_GVA:
		case KVM_MIPS_GPA:
			/* bad virtual or physical address */
			return EMULATE_FAIL;
		case KVM_MIPS_TLB:
			/* no matching guest TLB */
			vcpu->arch.host_cp0_badvaddr = addr;
			vcpu->arch.pc = curr_pc;
			FUNC1(cause, NULL, run, vcpu);
			return EMULATE_EXCEPT;
		case KVM_MIPS_TLBINV:
			/* invalid matching guest TLB */
			vcpu->arch.host_cp0_badvaddr = addr;
			vcpu->arch.pc = curr_pc;
			FUNC0(cause, NULL, run, vcpu);
			return EMULATE_EXCEPT;
		default:
			break;
		};
	}
}