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
struct reset_control {int dummy; } ;
struct phy {int dummy; } ;
struct oxnas_pcie_phy {int /*<<< orphan*/  dev; int /*<<< orphan*/  sys_ctrl; } ;

/* Variables and functions */
 int HCSL_BIAS_ON ; 
 int HCSL_PCIE_EN ; 
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int FUNC1 (struct reset_control*) ; 
 int /*<<< orphan*/  SYS_CTRL_HCSL_CTRL_REGOFFSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct oxnas_pcie_phy* FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct reset_control* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct reset_control*) ; 
 int FUNC7 (struct reset_control*) ; 

__attribute__((used)) static int FUNC8(struct phy *phy)
{
	struct oxnas_pcie_phy *pciephy = FUNC3(phy);
	struct reset_control *rstc;
	int ret;

	/* generate clocks from HCSL buffers, shared parts */
	FUNC4(pciephy->sys_ctrl, SYS_CTRL_HCSL_CTRL_REGOFFSET, HCSL_BIAS_ON|HCSL_PCIE_EN);

	/* Ensure PCIe PHY is properly reset */
	rstc = FUNC5(pciephy->dev, "phy");
	if (FUNC0(rstc)) {
		ret = FUNC1(rstc);
	} else {
		ret = FUNC7(rstc);
		FUNC6(rstc);
	}

	if (ret) {
		FUNC2(pciephy->dev, "phy reset failed %d\n", ret);
		return ret;
	}

	return 0;
}