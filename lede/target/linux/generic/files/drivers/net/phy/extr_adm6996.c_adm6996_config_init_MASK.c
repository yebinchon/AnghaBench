#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ addr; int /*<<< orphan*/  dev; } ;
struct phy_device {struct adm6996_priv* priv; TYPE_2__* attached_dev; TYPE_1__ mdio; void* advertising; void* supported; } ;
struct adm6996_priv {int /*<<< orphan*/  write; int /*<<< orphan*/  read; struct phy_device* priv; int /*<<< orphan*/  mib_lock; int /*<<< orphan*/  reg_mutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 void* ADVERTISED_100baseT_Full ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  adm6996_read_mii_reg ; 
 int FUNC0 (struct adm6996_priv*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  adm6996_write_mii_reg ; 
 struct adm6996_priv* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct phy_device *pdev)
{
	struct adm6996_priv *priv;
	int ret;

	pdev->supported = ADVERTISED_100baseT_Full;
	pdev->advertising = ADVERTISED_100baseT_Full;

	if (pdev->mdio.addr != 0) {
		FUNC3 ("%s: PHY overlaps ADM6996, providing fixed PHY 0x%x.\n"
				, pdev->attached_dev->name, pdev->mdio.addr);
		return 0;
	}

	priv = FUNC1(&pdev->mdio.dev, sizeof(struct adm6996_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC2(&priv->reg_mutex);
	FUNC2(&priv->mib_lock);
	priv->priv = pdev;
	priv->read = adm6996_read_mii_reg;
	priv->write = adm6996_write_mii_reg;

	ret = FUNC0(priv, pdev->attached_dev->name, pdev->attached_dev);
	if (ret < 0)
		return ret;

	pdev->priv = priv;

	return 0;
}