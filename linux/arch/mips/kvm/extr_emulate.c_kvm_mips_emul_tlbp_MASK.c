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
struct TYPE_2__ {unsigned long pc; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef  enum emulation_result { ____Placeholder_emulation_result } emulation_result ;

/* Variables and functions */
 int EMULATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,long,int) ; 
 int FUNC1 (struct kvm_vcpu*,long) ; 
 long FUNC2 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mips_coproc*,int) ; 

enum emulation_result FUNC4(struct kvm_vcpu *vcpu)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	long entryhi = FUNC2(cop0);
	unsigned long pc = vcpu->arch.pc;
	int index = -1;

	index = FUNC1(vcpu, entryhi);

	FUNC3(cop0, index);

	FUNC0("[%#lx] COP0_TLBP (entryhi: %#lx), index: %d\n", pc, entryhi,
		  index);

	return EMULATE_DONE;
}