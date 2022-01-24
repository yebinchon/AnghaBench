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
struct mtk_ahci_plat {int /*<<< orphan*/  mode; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct ahci_host_priv {int /*<<< orphan*/  force_port_map; struct mtk_ahci_plat* plat_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_CFG ; 
 int /*<<< orphan*/  SYS_CFG_SATA_EN ; 
 int /*<<< orphan*/  SYS_CFG_SATA_MSK ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 scalar_t__ FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC7(struct ahci_host_priv *hpriv,
				   struct device *dev)
{
	struct mtk_ahci_plat *plat = hpriv->plat_data;
	struct device_node *np = dev->of_node;

	/* enable SATA function if needed */
	if (FUNC3(np, "mediatek,phy-mode", NULL)) {
		plat->mode = FUNC6(
					np, "mediatek,phy-mode");
		if (FUNC0(plat->mode)) {
			FUNC2(dev, "missing phy-mode phandle\n");
			return FUNC1(plat->mode);
		}

		FUNC5(plat->mode, SYS_CFG, SYS_CFG_SATA_MSK,
				   SYS_CFG_SATA_EN);
	}

	FUNC4(np, "ports-implemented", &hpriv->force_port_map);

	return 0;
}