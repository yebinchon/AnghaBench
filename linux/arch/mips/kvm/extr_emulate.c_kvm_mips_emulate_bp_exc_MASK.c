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
struct mips_coproc {int dummy; } ;
struct kvm_vcpu_arch {scalar_t__ pc; struct mips_coproc* cop0; } ;
struct kvm_vcpu {struct kvm_vcpu_arch arch; } ;
struct kvm_run {int dummy; } ;
typedef  enum emulation_result { ____Placeholder_emulation_result } emulation_result ;

/* Variables and functions */
 int CAUSEB_EXCCODE ; 
 int CAUSEF_BD ; 
 int EMULATE_DONE ; 
 int EMULATE_FAIL ; 
 int EXCCODE_BP ; 
 int ST0_EXL ; 
 int /*<<< orphan*/  FUNC0 (struct mips_coproc*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*) ; 
 int FUNC5 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mips_coproc*,scalar_t__) ; 

enum emulation_result FUNC9(u32 cause,
					      u32 *opc,
					      struct kvm_run *run,
					      struct kvm_vcpu *vcpu)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	struct kvm_vcpu_arch *arch = &vcpu->arch;
	enum emulation_result er = EMULATE_DONE;

	if ((FUNC5(cop0) & ST0_EXL) == 0) {
		/* save old pc */
		FUNC8(cop0, arch->pc);
		FUNC7(cop0, ST0_EXL);

		if (cause & CAUSEF_BD)
			FUNC6(cop0, CAUSEF_BD);
		else
			FUNC1(cop0, CAUSEF_BD);

		FUNC2("Delivering BP @ pc %#lx\n", arch->pc);

		FUNC0(cop0, (0xff),
					  (EXCCODE_BP << CAUSEB_EXCCODE));

		/* Set PC to the exception entry point */
		arch->pc = FUNC4(vcpu) + 0x180;

	} else {
		FUNC3("Trying to deliver BP when EXL is already set\n");
		er = EMULATE_FAIL;
	}

	return er;
}