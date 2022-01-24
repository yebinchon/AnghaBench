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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int P0_PHY_READY ; 
 int PHY0_RESET_N ; 
 int PHY1_RESET_N ; 
 int PHY2_RESET_N ; 
 int PHY3_RESET_N ; 
 int /*<<< orphan*/  SATA_CTL ; 
 int SATA_RST_N ; 
 int /*<<< orphan*/  SATA_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(int node)
{
	uint32_t reg_val;
	uint64_t regbase;
	int i;

	FUNC3("XLP AHCI Initialization started.\n");
	regbase = FUNC0(node);

	/* Reset SATA */
	FUNC4(regbase, SATA_CTL, SATA_RST_N);
	/* Reset PHY */
	FUNC4(regbase, SATA_CTL,
			(PHY3_RESET_N | PHY2_RESET_N
			 | PHY1_RESET_N | PHY0_RESET_N));

	/* Set SATA */
	FUNC5(regbase, SATA_CTL, SATA_RST_N);
	/* Set PHY */
	FUNC5(regbase, SATA_CTL,
			(PHY3_RESET_N | PHY2_RESET_N
			 | PHY1_RESET_N | PHY0_RESET_N));

	FUNC2("Waiting for PHYs to come up.\n");
	i = 0;
	do {
		reg_val = FUNC1(regbase, SATA_STATUS);
		i++;
	} while (((reg_val & 0xF0) != 0xF0) && (i < 10000));

	for (i = 0; i < 4; i++) {
		if (reg_val  & (P0_PHY_READY << i))
			FUNC3("PHY%d is up.\n", i);
		else
			FUNC3("PHY%d is down.\n", i);
	}

	FUNC3("XLP AHCI init done.\n");
}