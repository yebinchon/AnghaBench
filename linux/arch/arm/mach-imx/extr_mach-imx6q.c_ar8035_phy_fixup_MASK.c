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
typedef  int u16 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int BMCR_PDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int,int) ; 

__attribute__((used)) static int FUNC3(struct phy_device *dev)
{
	u16 val;

	/* Ar803x phy SmartEEE feature cause link status generates glitch,
	 * which cause ethernet link down/up issue, so disable SmartEEE
	 */
	FUNC2(dev, 0xd, 0x3);
	FUNC2(dev, 0xe, 0x805d);
	FUNC2(dev, 0xd, 0x4003);

	val = FUNC1(dev, 0xe);
	FUNC2(dev, 0xe, val & ~(1 << 8));

	/*
	 * Enable 125MHz clock from CLK_25M on the AR8031.  This
	 * is fed in to the IMX6 on the ENET_REF_CLK (V22) pad.
	 * Also, introduce a tx clock delay.
	 *
	 * This is the same as is the AR8031 fixup.
	 */
	FUNC0(dev);

	/*check phy power*/
	val = FUNC1(dev, 0x0);
	if (val & BMCR_PDOWN)
		FUNC2(dev, 0x0, val & ~BMCR_PDOWN);

	return 0;
}