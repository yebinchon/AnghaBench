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
struct TYPE_2__ {int /*<<< orphan*/  pc; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef  enum emulation_result { ____Placeholder_emulation_result } emulation_result ;

/* Variables and functions */
 int EMULATE_DONE ; 
 int EMULATE_FAIL ; 
 int ST0_ERL ; 
 int ST0_EXL ; 
 int /*<<< orphan*/  FUNC0 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mips_coproc*) ; 
 int FUNC5 (struct mips_coproc*) ; 

enum emulation_result FUNC6(struct kvm_vcpu *vcpu)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	enum emulation_result er = EMULATE_DONE;

	if (FUNC5(cop0) & ST0_ERL) {
		FUNC0(cop0, ST0_ERL);
		vcpu->arch.pc = FUNC4(cop0);
	} else if (FUNC5(cop0) & ST0_EXL) {
		FUNC1("[%#lx] ERET to %#lx\n", vcpu->arch.pc,
			  FUNC3(cop0));
		FUNC0(cop0, ST0_EXL);
		vcpu->arch.pc = FUNC3(cop0);

	} else {
		FUNC2("[%#lx] ERET when MIPS_SR_EXL|MIPS_SR_ERL == 0\n",
			vcpu->arch.pc);
		er = EMULATE_FAIL;
	}

	return er;
}