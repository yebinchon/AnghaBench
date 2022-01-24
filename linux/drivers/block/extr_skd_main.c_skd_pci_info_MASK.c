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
typedef  int uint16_t ;
struct skd_device {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  lwstr ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CAP_ID_EXP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static char *FUNC5(struct skd_device *skdev, char *str)
{
	int pcie_reg;

	FUNC4(str, "PCIe (");
	pcie_reg = FUNC0(skdev->pdev, PCI_CAP_ID_EXP);

	if (pcie_reg) {

		char lwstr[6];
		uint16_t pcie_lstat, lspeed, lwidth;

		pcie_reg += 0x12;
		FUNC1(skdev->pdev, pcie_reg, &pcie_lstat);
		lspeed = pcie_lstat & (0xF);
		lwidth = (pcie_lstat & 0x3F0) >> 4;

		if (lspeed == 1)
			FUNC3(str, "2.5GT/s ");
		else if (lspeed == 2)
			FUNC3(str, "5.0GT/s ");
		else
			FUNC3(str, "<unknown> ");
		FUNC2(lwstr, sizeof(lwstr), "%dX)", lwidth);
		FUNC3(str, lwstr);
	}
	return str;
}