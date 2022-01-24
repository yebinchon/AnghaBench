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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DCRN_AHBPLB4_EAR ; 
 int /*<<< orphan*/  DCRN_AHBPLB4_ESR ; 
 int /*<<< orphan*/  DCRN_PLB4AHB_ESR ; 
 int /*<<< orphan*/  DCRN_PLB4AHB_SELAR ; 
 int /*<<< orphan*/  DCRN_PLB4AHB_SEUAR ; 
 int /*<<< orphan*/  DCRN_PLB4OPB0_BASE ; 
 int /*<<< orphan*/  DCRN_PLB4OPB1_BASE ; 
 int /*<<< orphan*/  DCRN_PLB4OPB2_BASE ; 
 int /*<<< orphan*/  DCRN_PLB4OPB3_BASE ; 
 int /*<<< orphan*/  DCRN_PLB4PLB6_EARH ; 
 int /*<<< orphan*/  DCRN_PLB4PLB6_EARL ; 
 int /*<<< orphan*/  DCRN_PLB4PLB6_ESR ; 
 int /*<<< orphan*/  DCRN_PLB4_P0EARH ; 
 int /*<<< orphan*/  DCRN_PLB4_P0ESRH ; 
 int /*<<< orphan*/  DCRN_PLB4_P0ESRL ; 
 int /*<<< orphan*/  DCRN_PLB4_P1EARH ; 
 int /*<<< orphan*/  DCRN_PLB4_P1ESRH ; 
 int /*<<< orphan*/  DCRN_PLB4_P1ESRL ; 
 int /*<<< orphan*/  DCRN_PLB6MCIF_BEARH ; 
 int /*<<< orphan*/  DCRN_PLB6MCIF_BEARL ; 
 int /*<<< orphan*/  DCRN_PLB6MCIF_BESR0 ; 
 int /*<<< orphan*/  DCRN_PLB6MCIF_BESR1 ; 
 int /*<<< orphan*/  DCRN_PLB6PLB4_EARH ; 
 int /*<<< orphan*/  DCRN_PLB6PLB4_EARL ; 
 int /*<<< orphan*/  DCRN_PLB6PLB4_ESR ; 
 int /*<<< orphan*/  DCRN_PLB6_ERR ; 
 int /*<<< orphan*/  DCRN_PLB6_SHD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	FUNC3("Bus Error\n");

	FUNC0();

	FUNC3("\nPLB6 Controller:\n");
	FUNC3("BC_SHD: 0x%08x\n", FUNC1(DCRN_PLB6_SHD));
	FUNC3("BC_ERR: 0x%08x\n", FUNC1(DCRN_PLB6_ERR));

	FUNC3("\nPLB6-to-PLB4 Bridge:\n");
	FUNC3("ESR:  0x%08x\n", FUNC1(DCRN_PLB6PLB4_ESR));
	FUNC3("EARH: 0x%08x\n", FUNC1(DCRN_PLB6PLB4_EARH));
	FUNC3("EARL: 0x%08x\n", FUNC1(DCRN_PLB6PLB4_EARL));

	FUNC3("\nPLB4-to-PLB6 Bridge:\n");
	FUNC3("ESR:  0x%08x\n", FUNC1(DCRN_PLB4PLB6_ESR));
	FUNC3("EARH: 0x%08x\n", FUNC1(DCRN_PLB4PLB6_EARH));
	FUNC3("EARL: 0x%08x\n", FUNC1(DCRN_PLB4PLB6_EARL));

	FUNC3("\nPLB6-to-MCIF Bridge:\n");
	FUNC3("BESR0: 0x%08x\n", FUNC1(DCRN_PLB6MCIF_BESR0));
	FUNC3("BESR1: 0x%08x\n", FUNC1(DCRN_PLB6MCIF_BESR1));
	FUNC3("BEARH: 0x%08x\n", FUNC1(DCRN_PLB6MCIF_BEARH));
	FUNC3("BEARL: 0x%08x\n", FUNC1(DCRN_PLB6MCIF_BEARL));

	FUNC3("\nPLB4 Arbiter:\n");
	FUNC3("P0ESRH 0x%08x\n", FUNC1(DCRN_PLB4_P0ESRH));
	FUNC3("P0ESRL 0x%08x\n", FUNC1(DCRN_PLB4_P0ESRL));
	FUNC3("P0EARH 0x%08x\n", FUNC1(DCRN_PLB4_P0EARH));
	FUNC3("P0EARH 0x%08x\n", FUNC1(DCRN_PLB4_P0EARH));
	FUNC3("P1ESRH 0x%08x\n", FUNC1(DCRN_PLB4_P1ESRH));
	FUNC3("P1ESRL 0x%08x\n", FUNC1(DCRN_PLB4_P1ESRL));
	FUNC3("P1EARH 0x%08x\n", FUNC1(DCRN_PLB4_P1EARH));
	FUNC3("P1EARH 0x%08x\n", FUNC1(DCRN_PLB4_P1EARH));

	FUNC4(DCRN_PLB4OPB0_BASE, 0);
	FUNC4(DCRN_PLB4OPB1_BASE, 1);
	FUNC4(DCRN_PLB4OPB2_BASE, 2);
	FUNC4(DCRN_PLB4OPB3_BASE, 3);

	FUNC3("\nPLB4-to-AHB Bridge:\n");
	FUNC3("ESR:   0x%08x\n", FUNC1(DCRN_PLB4AHB_ESR));
	FUNC3("SEUAR: 0x%08x\n", FUNC1(DCRN_PLB4AHB_SEUAR));
	FUNC3("SELAR: 0x%08x\n", FUNC1(DCRN_PLB4AHB_SELAR));

	FUNC3("\nAHB-to-PLB4 Bridge:\n");
	FUNC3("\nESR: 0x%08x\n", FUNC1(DCRN_AHBPLB4_ESR));
	FUNC3("\nEAR: 0x%08x\n", FUNC1(DCRN_AHBPLB4_EAR));
	FUNC2("Bus Error\n");
}