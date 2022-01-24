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
typedef  int u32 ;
struct ar8xxx_priv {int initialized; TYPE_1__* phy; scalar_t__ port4_phy; } ;
struct TYPE_2__ {scalar_t__ interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8316_REG_POSTRIP ; 
 int EINVAL ; 
 scalar_t__ PHY_INTERFACE_MODE_GMII ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII ; 
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*) ; 
 int FUNC2 (struct ar8xxx_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(struct ar8xxx_priv *priv)
{
	u32 val, newval;

	val = FUNC2(priv, AR8316_REG_POSTRIP);

	if (priv->phy->interface == PHY_INTERFACE_MODE_RGMII) {
		if (priv->port4_phy) {
			/* value taken from Ubiquiti RouterStation Pro */
			newval = 0x81461bea;
			FUNC6("ar8316: Using port 4 as PHY\n");
		} else {
			newval = 0x01261be2;
			FUNC6("ar8316: Using port 4 as switch port\n");
		}
	} else if (priv->phy->interface == PHY_INTERFACE_MODE_GMII) {
		/* value taken from AVM Fritz!Box 7390 sources */
		newval = 0x010e5b71;
	} else {
		/* no known value for phy interface */
		FUNC5("ar8316: unsupported mii mode: %d.\n",
		       priv->phy->interface);
		return -EINVAL;
	}

	if (val == newval)
		goto out;

	FUNC3(priv, AR8316_REG_POSTRIP, newval);

	if (priv->port4_phy &&
	    priv->phy->interface == PHY_INTERFACE_MODE_RGMII) {
		/* work around for phy4 rgmii mode */
		FUNC0(priv, 4, 0x12, 0x480c);
		/* rx delay */
		FUNC0(priv, 4, 0x0, 0x824e);
		/* tx delay */
		FUNC0(priv, 4, 0x5, 0x3d47);
		FUNC4(1000);
	}

	FUNC1(priv);

out:
	priv->initialized = true;
	return 0;
}