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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CR_REG_TIMER ; 
 int /*<<< orphan*/  CR_TIME_SCALE ; 
 int /*<<< orphan*/  M_CSYSREQ ; 
 int /*<<< orphan*/  P0_IPDIPDMSYNTH ; 
 int /*<<< orphan*/  P0_IPDRXL ; 
 int /*<<< orphan*/  P0_IPDTXL ; 
 int /*<<< orphan*/  P0_IRST_HARD_SYNTH ; 
 int /*<<< orphan*/  P0_IRST_HARD_TXRX ; 
 int /*<<< orphan*/  P0_IRST_POR ; 
 int P0_PHY_READY ; 
 int /*<<< orphan*/  P1_IPDIPDMSYNTH ; 
 int /*<<< orphan*/  P1_IPDRXL ; 
 int /*<<< orphan*/  P1_IPDTXL ; 
 int /*<<< orphan*/  P1_IRST_HARD_SYNTH ; 
 int /*<<< orphan*/  P1_IRST_HARD_TXRX ; 
 int /*<<< orphan*/  P1_IRST_POR ; 
 int P1_PHY_READY ; 
 int /*<<< orphan*/  SATA_CTL ; 
 int /*<<< orphan*/  SATA_RST_N ; 
 int /*<<< orphan*/  SATA_STATUS ; 
 int /*<<< orphan*/  S_CSYSREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sata_phy_debug ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(int node)
{
	u32 reg_val;
	u64 regbase;
	int n;

	FUNC4("Initializing XLP9XX On-chip AHCI...\n");
	regbase = FUNC1(node);

	/* Reset port0 */
	FUNC5(regbase, SATA_CTL, P0_IRST_POR);
	FUNC5(regbase, SATA_CTL, P0_IRST_HARD_TXRX);
	FUNC5(regbase, SATA_CTL, P0_IRST_HARD_SYNTH);
	FUNC5(regbase, SATA_CTL, P0_IPDTXL);
	FUNC5(regbase, SATA_CTL, P0_IPDRXL);
	FUNC5(regbase, SATA_CTL, P0_IPDIPDMSYNTH);

	/* port1 */
	FUNC5(regbase, SATA_CTL, P1_IRST_POR);
	FUNC5(regbase, SATA_CTL, P1_IRST_HARD_TXRX);
	FUNC5(regbase, SATA_CTL, P1_IRST_HARD_SYNTH);
	FUNC5(regbase, SATA_CTL, P1_IPDTXL);
	FUNC5(regbase, SATA_CTL, P1_IPDRXL);
	FUNC5(regbase, SATA_CTL, P1_IPDIPDMSYNTH);
	FUNC7(300);

	/* Set PHY */
	FUNC6(regbase, SATA_CTL, P0_IPDTXL);
	FUNC6(regbase, SATA_CTL, P0_IPDRXL);
	FUNC6(regbase, SATA_CTL, P0_IPDIPDMSYNTH);
	FUNC6(regbase, SATA_CTL, P1_IPDTXL);
	FUNC6(regbase, SATA_CTL, P1_IPDRXL);
	FUNC6(regbase, SATA_CTL, P1_IPDIPDMSYNTH);

	FUNC7(1000);
	FUNC6(regbase, SATA_CTL, P0_IRST_POR);
	FUNC7(1000);
	FUNC6(regbase, SATA_CTL, P1_IRST_POR);
	FUNC7(1000);

	/* setup PHY */
	FUNC0(regbase);
	if (sata_phy_debug)
		FUNC8(regbase);

	FUNC7(1000);
	FUNC6(regbase, SATA_CTL, P0_IRST_HARD_TXRX);
	FUNC6(regbase, SATA_CTL, P0_IRST_HARD_SYNTH);
	FUNC6(regbase, SATA_CTL, P1_IRST_HARD_TXRX);
	FUNC6(regbase, SATA_CTL, P1_IRST_HARD_SYNTH);
	FUNC7(300);

	/* Override reset in serial PHY mode */
	FUNC6(regbase, CR_REG_TIMER, CR_TIME_SCALE);
	/* Set reset SATA */
	FUNC6(regbase, SATA_CTL, SATA_RST_N);
	FUNC6(regbase, SATA_CTL, M_CSYSREQ);
	FUNC6(regbase, SATA_CTL, S_CSYSREQ);

	FUNC3("Waiting for PHYs to come up.\n");
	n = 10000;
	do {
		reg_val = FUNC2(regbase, SATA_STATUS);
		if ((reg_val & P1_PHY_READY) && (reg_val & P0_PHY_READY))
			break;
		FUNC7(10);
	} while (--n > 0);

	if (reg_val  & P0_PHY_READY)
		FUNC4("PHY0 is up.\n");
	else
		FUNC4("PHY0 is down.\n");
	if (reg_val  & P1_PHY_READY)
		FUNC4("PHY1 is up.\n");
	else
		FUNC4("PHY1 is down.\n");

	FUNC4("XLP AHCI Init Done.\n");
}