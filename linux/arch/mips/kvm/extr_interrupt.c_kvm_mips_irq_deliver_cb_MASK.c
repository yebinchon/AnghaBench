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
struct kvm_vcpu_arch {int pc; int /*<<< orphan*/  pending_exceptions; struct mips_coproc* cop0; } ;
struct kvm_vcpu {struct kvm_vcpu_arch arch; } ;

/* Variables and functions */
 int CAUSEB_EXCCODE ; 
 int CAUSEF_BD ; 
 int /*<<< orphan*/  CAUSEF_EXCCODE ; 
 int CAUSEF_IV ; 
 int EXCCODE_INT ; 
 int IE_IRQ0 ; 
 int IE_IRQ1 ; 
 int IE_IRQ2 ; 
 int IE_IRQ5 ; 
#define  MIPS_EXC_INT_IO 131 
#define  MIPS_EXC_INT_IPI_1 130 
#define  MIPS_EXC_INT_IPI_2 129 
#define  MIPS_EXC_INT_TIMER 128 
 int ST0_ERL ; 
 int ST0_EXL ; 
 int ST0_IE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mips_coproc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct kvm_vcpu*) ; 
 int FUNC6 (struct mips_coproc*) ; 
 int FUNC7 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC8 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mips_coproc*,int) ; 

int FUNC11(struct kvm_vcpu *vcpu, unsigned int priority,
			    u32 cause)
{
	int allowed = 0;
	u32 exccode;

	struct kvm_vcpu_arch *arch = &vcpu->arch;
	struct mips_coproc *cop0 = vcpu->arch.cop0;

	switch (priority) {
	case MIPS_EXC_INT_TIMER:
		if ((FUNC7(cop0) & ST0_IE)
		    && (!(FUNC7(cop0) & (ST0_EXL | ST0_ERL)))
		    && (FUNC7(cop0) & IE_IRQ5)) {
			allowed = 1;
			exccode = EXCCODE_INT;
		}
		break;

	case MIPS_EXC_INT_IO:
		if ((FUNC7(cop0) & ST0_IE)
		    && (!(FUNC7(cop0) & (ST0_EXL | ST0_ERL)))
		    && (FUNC7(cop0) & IE_IRQ0)) {
			allowed = 1;
			exccode = EXCCODE_INT;
		}
		break;

	case MIPS_EXC_INT_IPI_1:
		if ((FUNC7(cop0) & ST0_IE)
		    && (!(FUNC7(cop0) & (ST0_EXL | ST0_ERL)))
		    && (FUNC7(cop0) & IE_IRQ1)) {
			allowed = 1;
			exccode = EXCCODE_INT;
		}
		break;

	case MIPS_EXC_INT_IPI_2:
		if ((FUNC7(cop0) & ST0_IE)
		    && (!(FUNC7(cop0) & (ST0_EXL | ST0_ERL)))
		    && (FUNC7(cop0) & IE_IRQ2)) {
			allowed = 1;
			exccode = EXCCODE_INT;
		}
		break;

	default:
		break;
	}

	/* Are we allowed to deliver the interrupt ??? */
	if (allowed) {
		if ((FUNC7(cop0) & ST0_EXL) == 0) {
			/* save old pc */
			FUNC10(cop0, arch->pc);
			FUNC9(cop0, ST0_EXL);

			if (cause & CAUSEF_BD)
				FUNC8(cop0, CAUSEF_BD);
			else
				FUNC2(cop0, CAUSEF_BD);

			FUNC3("Delivering INT @ pc %#lx\n", arch->pc);

		} else
			FUNC4("Trying to deliver interrupt when EXL is already set\n");

		FUNC1(cop0, CAUSEF_EXCCODE,
					  (exccode << CAUSEB_EXCCODE));

		/* XXXSL Set PC to the interrupt exception entry point */
		arch->pc = FUNC5(vcpu);
		if (FUNC6(cop0) & CAUSEF_IV)
			arch->pc += 0x200;
		else
			arch->pc += 0x180;

		FUNC0(priority, &vcpu->arch.pending_exceptions);
	}

	return allowed;
}