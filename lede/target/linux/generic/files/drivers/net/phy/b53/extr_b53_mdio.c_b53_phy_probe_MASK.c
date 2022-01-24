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
struct TYPE_2__ {scalar_t__ addr; int /*<<< orphan*/  bus; int /*<<< orphan*/  dev; } ;
struct phy_device {struct b53_device* priv; int /*<<< orphan*/  supported; int /*<<< orphan*/  advertising; TYPE_1__ mdio; } ;
struct b53_device {int current_page; int /*<<< orphan*/  dev; int /*<<< orphan*/  reg_mutex; int /*<<< orphan*/ * pdata; int /*<<< orphan*/ * ops; int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 scalar_t__ B53_PSEUDO_PHY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SUPPORTED_1000baseT_Full ; 
 int /*<<< orphan*/  SUPPORTED_100baseT_Full ; 
 int /*<<< orphan*/  b53_mdio_ops ; 
 struct b53_device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct b53_device*) ; 
 int FUNC2 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (struct b53_device*) ; 
 scalar_t__ FUNC5 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct phy_device *phydev)
{
	struct b53_device *dev;
	int ret;

	/* allow the generic phy driver to take over */
	if (phydev->mdio.addr != B53_PSEUDO_PHY && phydev->mdio.addr != 0)
		return -ENODEV;

	dev = FUNC0(&phydev->mdio.dev, &b53_mdio_ops, phydev->mdio.bus);
	if (!dev)
		return -ENOMEM;

	dev->current_page = 0xff;
	dev->priv = phydev->mdio.bus;
	dev->ops = &b53_mdio_ops;
	dev->pdata = NULL;
	FUNC6(&dev->reg_mutex);

	ret = FUNC1(dev);
	if (ret)
		return ret;

	if (FUNC4(dev) || FUNC5(dev))
		phydev->supported = SUPPORTED_100baseT_Full;
	else
		phydev->supported = SUPPORTED_1000baseT_Full;

	phydev->advertising = phydev->supported;

	ret = FUNC2(dev);
	if (ret) {
		FUNC3(dev->dev, "failed to register switch: %i\n", ret);
		return ret;
	}

	phydev->priv = dev;

	return 0;
}