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
struct kvm_vcpu_arch {int /*<<< orphan*/  host_cp0_badvaddr; scalar_t__ pc; struct mips_coproc* cop0; } ;
struct kvm_vcpu {struct kvm_vcpu_arch arch; } ;
struct kvm_run {int dummy; } ;
typedef  enum emulation_result { ____Placeholder_emulation_result } emulation_result ;

/* Variables and functions */
 int CAUSEB_EXCCODE ; 
 int CAUSEF_BD ; 
 int EMULATE_DONE ; 
 int EMULATE_FAIL ; 
 int ST0_EXL ; 
 int /*<<< orphan*/  FUNC0 (struct mips_coproc*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mips_coproc*) ; 
 int FUNC7 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC8 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mips_coproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mips_coproc*,scalar_t__) ; 

__attribute__((used)) static enum emulation_result FUNC12(u32 cause,
						  u32 *opc,
						  struct kvm_run *run,
						  struct kvm_vcpu *vcpu)
{
	u32 exccode = (cause >> CAUSEB_EXCCODE) & 0x1f;
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	struct kvm_vcpu_arch *arch = &vcpu->arch;
	enum emulation_result er = EMULATE_DONE;

	if ((FUNC7(cop0) & ST0_EXL) == 0) {
		/* save old pc */
		FUNC11(cop0, arch->pc);
		FUNC9(cop0, ST0_EXL);

		if (cause & CAUSEF_BD)
			FUNC8(cop0, CAUSEF_BD);
		else
			FUNC1(cop0, CAUSEF_BD);

		FUNC0(cop0, (0xff),
					  (exccode << CAUSEB_EXCCODE));

		/* Set PC to the exception entry point */
		arch->pc = FUNC4(vcpu) + 0x180;
		FUNC10(cop0, vcpu->arch.host_cp0_badvaddr);

		FUNC2("Delivering EXC %d @ pc %#lx, badVaddr: %#lx\n",
			  exccode, FUNC6(cop0),
			  FUNC5(cop0));
	} else {
		FUNC3("Trying to deliver EXC when EXL is already set\n");
		er = EMULATE_FAIL;
	}

	return er;
}