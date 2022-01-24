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
struct ag71xx {int phy_if_mode; } ;

/* Variables and functions */
 unsigned int AR71XX_MII1_CTRL_IF_RGMII ; 
 unsigned int AR71XX_MII1_CTRL_IF_RMII ; 
#define  PHY_INTERFACE_MODE_RGMII 129 
#define  PHY_INTERFACE_MODE_RMII 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct ag71xx *ag)
{
	unsigned int mii_if;

	switch (ag->phy_if_mode) {
	case PHY_INTERFACE_MODE_RMII:
		mii_if = AR71XX_MII1_CTRL_IF_RMII;
		break;
	case PHY_INTERFACE_MODE_RGMII:
		mii_if = AR71XX_MII1_CTRL_IF_RGMII;
		break;
	default:
		FUNC0(1, "Impossible PHY mode defined.\n");
		return;
	}

	FUNC1(ag, mii_if);
}