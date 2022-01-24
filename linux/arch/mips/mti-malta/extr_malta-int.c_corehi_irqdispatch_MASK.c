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
struct pt_regs {int /*<<< orphan*/  cp0_badvaddr; int /*<<< orphan*/  cp0_cause; int /*<<< orphan*/  cp0_status; int /*<<< orphan*/  cp0_epc; } ;

/* Variables and functions */
 unsigned int BONITO_INTEDGE ; 
 unsigned int BONITO_INTEN ; 
 unsigned int BONITO_INTISR ; 
 unsigned int BONITO_INTPOL ; 
 unsigned int BONITO_INTSTEER ; 
 unsigned int BONITO_PCIBADADDR ; 
 unsigned int BONITO_PCICMD ; 
 unsigned int BONITO_PCIMSTAT ; 
 int /*<<< orphan*/  GT_CPUERR_ADDRHI_OFS ; 
 int /*<<< orphan*/  GT_CPUERR_ADDRLO_OFS ; 
 int /*<<< orphan*/  GT_INTRCAUSE_OFS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
#define  MIPS_REVISION_SCON_BONITO 133 
#define  MIPS_REVISION_SCON_GT64120 132 
#define  MIPS_REVISION_SCON_ROCIT 131 
#define  MIPS_REVISION_SCON_SOCIT 130 
#define  MIPS_REVISION_SCON_SOCITSC 129 
#define  MIPS_REVISION_SCON_SOCITSCP 128 
 int /*<<< orphan*/  FUNC1 (char*,struct pt_regs*) ; 
 struct pt_regs* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int mips_revision_sconid ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned int intedge, intsteer, pcicmd, pcibadaddr;
	unsigned int pcimstat, intisr, inten, intpol;
	unsigned int intrcause, datalo, datahi;
	struct pt_regs *regs = FUNC2();

	FUNC4("CoreHI interrupt, shouldn't happen, we die here!\n");
	FUNC4("epc	 : %08lx\nStatus: %08lx\n"
		 "Cause : %08lx\nbadVaddr : %08lx\n",
		 regs->cp0_epc, regs->cp0_status,
		 regs->cp0_cause, regs->cp0_badvaddr);

	/* Read all the registers and then print them as there is a
	   problem with interspersed printk's upsetting the Bonito controller.
	   Do it for the others too.
	*/

	switch (mips_revision_sconid) {
	case MIPS_REVISION_SCON_SOCIT:
	case MIPS_REVISION_SCON_ROCIT:
	case MIPS_REVISION_SCON_SOCITSC:
	case MIPS_REVISION_SCON_SOCITSCP:
		FUNC3();
		break;
	case MIPS_REVISION_SCON_GT64120:
		intrcause = FUNC0(GT_INTRCAUSE_OFS);
		datalo = FUNC0(GT_CPUERR_ADDRLO_OFS);
		datahi = FUNC0(GT_CPUERR_ADDRHI_OFS);
		FUNC4("GT_INTRCAUSE = %08x\n", intrcause);
		FUNC4("GT_CPUERR_ADDR = %02x%08x\n",
				datahi, datalo);
		break;
	case MIPS_REVISION_SCON_BONITO:
		pcibadaddr = BONITO_PCIBADADDR;
		pcimstat = BONITO_PCIMSTAT;
		intisr = BONITO_INTISR;
		inten = BONITO_INTEN;
		intpol = BONITO_INTPOL;
		intedge = BONITO_INTEDGE;
		intsteer = BONITO_INTSTEER;
		pcicmd = BONITO_PCICMD;
		FUNC4("BONITO_INTISR = %08x\n", intisr);
		FUNC4("BONITO_INTEN = %08x\n", inten);
		FUNC4("BONITO_INTPOL = %08x\n", intpol);
		FUNC4("BONITO_INTEDGE = %08x\n", intedge);
		FUNC4("BONITO_INTSTEER = %08x\n", intsteer);
		FUNC4("BONITO_PCICMD = %08x\n", pcicmd);
		FUNC4("BONITO_PCIBADADDR = %08x\n", pcibadaddr);
		FUNC4("BONITO_PCIMSTAT = %08x\n", pcimstat);
		break;
	}

	FUNC1("CoreHi interrupt", regs);
}