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
 int /*<<< orphan*/  FUNC0 (struct phy_device*,int,int) ; 

__attribute__((used)) static int FUNC1(struct phy_device *dev)
{
	/* enable RXC skew select RGMII copper mode */
	FUNC0(dev, 0x1e, 0x21);
	FUNC0(dev, 0x1f, 0x7ea8);
	FUNC0(dev, 0x1e, 0x2f);
	FUNC0(dev, 0x1f, 0x71b7);

	return 0;
}