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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mtk_ahci_plat {int dummy; } ;
struct ahci_host_priv {struct mtk_ahci_plat* plat_data; } ;

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
 int /*<<< orphan*/  ahci_port_info ; 
 struct mtk_ahci_plat* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ahci_host_priv*,struct device*) ; 
 int FUNC8 (struct ahci_host_priv*,struct device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mtk_ahci_plat *plat;
	struct ahci_host_priv *hpriv;
	int err;

	plat = FUNC6(dev, sizeof(*plat), GFP_KERNEL);
	if (!plat)
		return -ENOMEM;

	hpriv = FUNC4(pdev, 0);
	if (FUNC0(hpriv))
		return FUNC1(hpriv);

	hpriv->plat_data = plat;

	err = FUNC7(hpriv, dev);
	if (err)
		return err;

	err = FUNC8(hpriv, dev);
	if (err)
		return err;

	err = FUNC3(hpriv);
	if (err)
		return err;

	err = FUNC5(pdev, hpriv, &ahci_port_info,
				      &ahci_platform_sht);
	if (err)
		goto disable_resources;

	return 0;

disable_resources:
	FUNC2(hpriv);
	return err;
}