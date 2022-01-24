#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct switch_port_link {int speed; scalar_t__ duplex; int /*<<< orphan*/  link; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct phy_device {scalar_t__ state; int link; int /*<<< orphan*/  attached_dev; int /*<<< orphan*/  (* adjust_link ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; TYPE_1__ mdio; struct ar8xxx_priv* priv; } ;
struct ar8xxx_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  DUPLEX_HALF ; 
 scalar_t__ PHY_CHANGELINK ; 
 scalar_t__ PHY_RUNNING ; 
 int /*<<< orphan*/  SPEED_10 ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  SPEED_1000 ; 
#define  SWITCH_PORT_SPEED_10 130 
#define  SWITCH_PORT_SPEED_100 129 
#define  SWITCH_PORT_SPEED_1000 128 
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*,int /*<<< orphan*/ ,struct switch_port_link*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*) ; 
 int FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct phy_device *phydev)
{
	struct ar8xxx_priv *priv = phydev->priv;
	struct switch_port_link link;

	/* check for switch port link changes */
	if (phydev->state == PHY_CHANGELINK)
		FUNC1(priv);

	if (phydev->mdio.addr != 0)
		return FUNC2(phydev);

	FUNC0(priv, phydev->mdio.addr, &link);
	phydev->link = !!link.link;
	if (!phydev->link)
		return 0;

	switch (link.speed) {
	case SWITCH_PORT_SPEED_10:
		phydev->speed = SPEED_10;
		break;
	case SWITCH_PORT_SPEED_100:
		phydev->speed = SPEED_100;
		break;
	case SWITCH_PORT_SPEED_1000:
		phydev->speed = SPEED_1000;
		break;
	default:
		phydev->speed = 0;
	}
	phydev->duplex = link.duplex ? DUPLEX_FULL : DUPLEX_HALF;

	phydev->state = PHY_RUNNING;
	FUNC3(phydev->attached_dev);
	if (phydev->adjust_link)
		phydev->adjust_link(phydev->attached_dev);

	return 0;
}