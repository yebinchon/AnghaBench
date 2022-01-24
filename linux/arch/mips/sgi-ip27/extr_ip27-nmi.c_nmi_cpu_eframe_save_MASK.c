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
struct reg_struct {int sr; int /*<<< orphan*/  nmi_sr; int /*<<< orphan*/  cache_err; int /*<<< orphan*/  badva; int /*<<< orphan*/  cause; scalar_t__* gpr; scalar_t__ error_epc; scalar_t__ epc; } ;
typedef  int /*<<< orphan*/  nasid_t ;

/* Variables and functions */
 int IP27_NMI_KREGS_CPU_SIZE ; 
 int /*<<< orphan*/  IP27_NMI_KREGS_OFFSET ; 
#define  KSU_KERNEL 130 
#define  KSU_SUPERVISOR 129 
#define  KSU_USER 128 
 int ST0_ERL ; 
 int ST0_EXL ; 
 int ST0_IE ; 
 int ST0_KSU ; 
 int ST0_KX ; 
 int ST0_SX ; 
 int ST0_UX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(nasid_t nasid, int slice)
{
	struct reg_struct *nr;
	int		i;

	/* Get the pointer to the current cpu's register set. */
	nr = (struct reg_struct *)
		(FUNC1(FUNC0(nasid, IP27_NMI_KREGS_OFFSET)) +
		slice * IP27_NMI_KREGS_CPU_SIZE);

	FUNC3("NMI nasid %d: slice %d\n", nasid, slice);

	/*
	 * Saved main processor registers
	 */
	for (i = 0; i < 32; ) {
		if ((i % 4) == 0)
			FUNC3("$%2d   :", i);
		FUNC2(" %016lx", nr->gpr[i]);

		i++;
		if ((i % 4) == 0)
			FUNC2("\n");
	}

	FUNC3("Hi    : (value lost)\n");
	FUNC3("Lo    : (value lost)\n");

	/*
	 * Saved cp0 registers
	 */
	FUNC3("epc   : %016lx %pS\n", nr->epc, (void *)nr->epc);
	FUNC3("%s\n", FUNC4());
	FUNC3("ErrEPC: %016lx %pS\n", nr->error_epc, (void *)nr->error_epc);
	FUNC3("ra    : %016lx %pS\n", nr->gpr[31], (void *)nr->gpr[31]);
	FUNC3("Status: %08lx	      ", nr->sr);

	if (nr->sr & ST0_KX)
		FUNC2("KX ");
	if (nr->sr & ST0_SX)
		FUNC2("SX ");
	if (nr->sr & ST0_UX)
		FUNC2("UX ");

	switch (nr->sr & ST0_KSU) {
	case KSU_USER:
		FUNC2("USER ");
		break;
	case KSU_SUPERVISOR:
		FUNC2("SUPERVISOR ");
		break;
	case KSU_KERNEL:
		FUNC2("KERNEL ");
		break;
	default:
		FUNC2("BAD_MODE ");
		break;
	}

	if (nr->sr & ST0_ERL)
		FUNC2("ERL ");
	if (nr->sr & ST0_EXL)
		FUNC2("EXL ");
	if (nr->sr & ST0_IE)
		FUNC2("IE ");
	FUNC2("\n");

	FUNC3("Cause : %08lx\n", nr->cause);
	FUNC3("PrId  : %08x\n", FUNC5());
	FUNC3("BadVA : %016lx\n", nr->badva);
	FUNC3("CErr  : %016lx\n", nr->cache_err);
	FUNC3("NMI_SR: %016lx\n", nr->nmi_sr);

	FUNC3("\n");
}