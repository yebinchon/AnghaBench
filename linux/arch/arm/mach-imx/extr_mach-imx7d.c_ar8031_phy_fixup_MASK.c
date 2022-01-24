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
 int FUNC0 (struct phy_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *dev)
{
	u16 val;

	/* Set RGMII IO voltage to 1.8V */
	FUNC1(dev, 0x1d, 0x1f);
	FUNC1(dev, 0x1e, 0x8);

	/* disable phy AR8031 SmartEEE function. */
	FUNC1(dev, 0xd, 0x3);
	FUNC1(dev, 0xe, 0x805d);
	FUNC1(dev, 0xd, 0x4003);
	val = FUNC0(dev, 0xe);
	val &= ~(0x1 << 8);
	FUNC1(dev, 0xe, val);

	return 0;
}