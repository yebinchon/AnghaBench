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
typedef  int /*<<< orphan*/  uint32_t ;
struct pt_regs {unsigned int cp0_cause; unsigned int acx; unsigned int hi; unsigned int lo; int cp0_status; unsigned int cp0_badvaddr; scalar_t__* regs; scalar_t__ cp0_epc; } ;

/* Variables and functions */
 unsigned int CAUSEB_EXCCODE ; 
 unsigned int CAUSEF_EXCCODE ; 
 int /*<<< orphan*/  KERN_DEFAULT ; 
#define  KSU_KERNEL 130 
#define  KSU_SUPERVISOR 129 
#define  KSU_USER 128 
 int MIPS_ISA_REV ; 
 int ST0_ERL ; 
 int ST0_EXL ; 
 int ST0_IE ; 
 int ST0_IEC ; 
 int ST0_IEO ; 
 int ST0_IEP ; 
 int ST0_KSU ; 
 int ST0_KUC ; 
 int ST0_KUO ; 
 int ST0_KUP ; 
 int ST0_KX ; 
 int ST0_SX ; 
 int ST0_UX ; 
 scalar_t__ cpu_has_3kex ; 
 scalar_t__ cpu_has_4kex ; 
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int const,...) ; 
 int const FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const struct pt_regs *regs)
{
	const int field = 2 * sizeof(unsigned long);
	unsigned int cause = regs->cp0_cause;
	unsigned int exccode;
	int i;

	FUNC4(KERN_DEFAULT);

	/*
	 * Saved main processor registers
	 */
	for (i = 0; i < 32; ) {
		if ((i % 4) == 0)
			FUNC2("$%2d   :", i);
		if (i == 0)
			FUNC1(" %0*lx", field, 0UL);
		else if (i == 26 || i == 27)
			FUNC1(" %*s", field, "");
		else
			FUNC1(" %0*lx", field, regs->regs[i]);

		i++;
		if ((i % 4) == 0)
			FUNC1("\n");
	}

#ifdef CONFIG_CPU_HAS_SMARTMIPS
	printk("Acx    : %0*lx\n", field, regs->acx);
#endif
	if (MIPS_ISA_REV < 6) {
		FUNC2("Hi    : %0*lx\n", field, regs->hi);
		FUNC2("Lo    : %0*lx\n", field, regs->lo);
	}

	/*
	 * Saved cp0 registers
	 */
	FUNC2("epc   : %0*lx %pS\n", field, regs->cp0_epc,
	       (void *) regs->cp0_epc);
	FUNC2("ra    : %0*lx %pS\n", field, regs->regs[31],
	       (void *) regs->regs[31]);

	FUNC2("Status: %08x	", (uint32_t) regs->cp0_status);

	if (cpu_has_3kex) {
		if (regs->cp0_status & ST0_KUO)
			FUNC1("KUo ");
		if (regs->cp0_status & ST0_IEO)
			FUNC1("IEo ");
		if (regs->cp0_status & ST0_KUP)
			FUNC1("KUp ");
		if (regs->cp0_status & ST0_IEP)
			FUNC1("IEp ");
		if (regs->cp0_status & ST0_KUC)
			FUNC1("KUc ");
		if (regs->cp0_status & ST0_IEC)
			FUNC1("IEc ");
	} else if (cpu_has_4kex) {
		if (regs->cp0_status & ST0_KX)
			FUNC1("KX ");
		if (regs->cp0_status & ST0_SX)
			FUNC1("SX ");
		if (regs->cp0_status & ST0_UX)
			FUNC1("UX ");
		switch (regs->cp0_status & ST0_KSU) {
		case KSU_USER:
			FUNC1("USER ");
			break;
		case KSU_SUPERVISOR:
			FUNC1("SUPERVISOR ");
			break;
		case KSU_KERNEL:
			FUNC1("KERNEL ");
			break;
		default:
			FUNC1("BAD_MODE ");
			break;
		}
		if (regs->cp0_status & ST0_ERL)
			FUNC1("ERL ");
		if (regs->cp0_status & ST0_EXL)
			FUNC1("EXL ");
		if (regs->cp0_status & ST0_IE)
			FUNC1("IE ");
	}
	FUNC1("\n");

	exccode = (cause & CAUSEF_EXCCODE) >> CAUSEB_EXCCODE;
	FUNC2("Cause : %08x (ExcCode %02x)\n", cause, exccode);

	if (1 <= exccode && exccode <= 5)
		FUNC2("BadVA : %0*lx\n", field, regs->cp0_badvaddr);

	FUNC2("PrId  : %08x (%s)\n", FUNC3(),
	       FUNC0());
}