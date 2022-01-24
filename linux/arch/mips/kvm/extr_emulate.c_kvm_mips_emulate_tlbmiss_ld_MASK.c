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
struct kvm_vcpu_arch {unsigned long host_cp0_badvaddr; void* pc; struct mips_coproc* cop0; } ;
struct kvm_vcpu {struct kvm_vcpu_arch arch; } ;
struct kvm_run {int dummy; } ;
typedef  enum emulation_result { ____Placeholder_emulation_result } emulation_result ;

/* Variables and functions */
 int CAUSEB_EXCCODE ; 
 int CAUSEF_BD ; 
 int EMULATE_DONE ; 
 int EXCCODE_TLBL ; 
 unsigned long KVM_ENTRYHI_ASID ; 
 int ST0_EXL ; 
 unsigned long VPN2_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct mips_coproc*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*) ; 
 void* FUNC3 (struct kvm_vcpu*) ; 
 unsigned long FUNC4 (struct mips_coproc*) ; 
 int FUNC5 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mips_coproc*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct mips_coproc*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct mips_coproc*,void*) ; 

enum emulation_result FUNC11(u32 cause,
						  u32 *opc,
						  struct kvm_run *run,
						  struct kvm_vcpu *vcpu)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	struct kvm_vcpu_arch *arch = &vcpu->arch;
	unsigned long entryhi = (vcpu->arch.  host_cp0_badvaddr & VPN2_MASK) |
			(FUNC4(cop0) & KVM_ENTRYHI_ASID);

	if ((FUNC5(cop0) & ST0_EXL) == 0) {
		/* save old pc */
		FUNC10(cop0, arch->pc);
		FUNC7(cop0, ST0_EXL);

		if (cause & CAUSEF_BD)
			FUNC6(cop0, CAUSEF_BD);
		else
			FUNC1(cop0, CAUSEF_BD);

		FUNC2("[EXL == 0] delivering TLB MISS @ pc %#lx\n",
			  arch->pc);

		/* set pc to the exception entry point */
		arch->pc = FUNC3(vcpu) + 0x0;

	} else {
		FUNC2("[EXL == 1] delivering TLB MISS @ pc %#lx\n",
			  arch->pc);

		arch->pc = FUNC3(vcpu) + 0x180;
	}

	FUNC0(cop0, (0xff),
				  (EXCCODE_TLBL << CAUSEB_EXCCODE));

	/* setup badvaddr, context and entryhi registers for the guest */
	FUNC8(cop0, vcpu->arch.host_cp0_badvaddr);
	/* XXXKYMA: is the context register used by linux??? */
	FUNC9(cop0, entryhi);

	return EMULATE_DONE;
}