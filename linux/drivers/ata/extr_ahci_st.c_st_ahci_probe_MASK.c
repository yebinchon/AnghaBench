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
struct st_ahci_drv_data {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct ahci_host_priv {int /*<<< orphan*/  force_port_map; int /*<<< orphan*/  mmio; struct st_ahci_drv_data* plat_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct ahci_host_priv*) ; 
 int FUNC1 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahci_host_priv*) ; 
 int FUNC3 (struct ahci_host_priv*) ; 
 struct ahci_host_priv* FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct platform_device*,struct ahci_host_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ahci_platform_sht ; 
 struct st_ahci_drv_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  st_ahci_port_info ; 
 int FUNC9 (struct ahci_host_priv*,struct device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct st_ahci_drv_data *drv_data;
	struct ahci_host_priv *hpriv;
	int err;

	drv_data = FUNC6(&pdev->dev, sizeof(*drv_data), GFP_KERNEL);
	if (!drv_data)
		return -ENOMEM;

	hpriv = FUNC4(pdev, 0);
	if (FUNC0(hpriv))
		return FUNC1(hpriv);
	hpriv->plat_data = drv_data;

	err = FUNC9(hpriv, &pdev->dev);
	if (err)
		return err;

	err = FUNC3(hpriv);
	if (err)
		return err;

	FUNC8(hpriv->mmio);

	FUNC7(dev->of_node,
			     "ports-implemented", &hpriv->force_port_map);

	err = FUNC5(pdev, hpriv, &st_ahci_port_info,
				      &ahci_platform_sht);
	if (err) {
		FUNC2(hpriv);
		return err;
	}

	return 0;
}