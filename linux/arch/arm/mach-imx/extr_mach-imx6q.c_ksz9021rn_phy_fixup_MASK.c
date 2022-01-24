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
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PHYLIB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MICREL_KSZ9021_EXTREG_CTRL ; 
 int /*<<< orphan*/  MICREL_KSZ9021_EXTREG_DATA_WRITE ; 
 int MICREL_KSZ9021_RGMII_CLK_CTRL_PAD_SCEW ; 
 int MICREL_KSZ9021_RGMII_RX_DATA_PAD_SCEW ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	if (FUNC0(CONFIG_PHYLIB)) {
		/* min rx data delay */
		FUNC1(phydev, MICREL_KSZ9021_EXTREG_CTRL,
			0x8000 | MICREL_KSZ9021_RGMII_RX_DATA_PAD_SCEW);
		FUNC1(phydev, MICREL_KSZ9021_EXTREG_DATA_WRITE, 0x0000);

		/* max rx/tx clock delay, min rx/tx control delay */
		FUNC1(phydev, MICREL_KSZ9021_EXTREG_CTRL,
			0x8000 | MICREL_KSZ9021_RGMII_CLK_CTRL_PAD_SCEW);
		FUNC1(phydev, MICREL_KSZ9021_EXTREG_DATA_WRITE, 0xf0f0);
		FUNC1(phydev, MICREL_KSZ9021_EXTREG_CTRL,
			MICREL_KSZ9021_RGMII_CLK_CTRL_PAD_SCEW);
	}

	return 0;
}