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
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct brcm_ahci_priv {int version; int quirks; int /*<<< orphan*/  port_mask; int /*<<< orphan*/  rcdev; struct ahci_host_priv* top_ctrl; struct device* dev; } ;
struct ahci_host_priv {int /*<<< orphan*/  flags; struct brcm_ahci_priv* plat_data; } ;
typedef  enum brcm_ahci_version { ____Placeholder_brcm_ahci_version } brcm_ahci_version ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_HFLAG_NO_NCQ ; 
 int /*<<< orphan*/  AHCI_HFLAG_NO_WRITE_TO_RO ; 
 int /*<<< orphan*/  AHCI_HFLAG_WAKE_BEFORE_STOP ; 
 int BRCM_AHCI_QUIRK_NO_NCQ ; 
 int BRCM_AHCI_QUIRK_SKIP_PHY_ENABLE ; 
 scalar_t__ BRCM_SATA_BCM7425 ; 
 scalar_t__ BRCM_SATA_NSP ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  ahci_brcm_port_info ; 
 int /*<<< orphan*/  ahci_of_match ; 
 int FUNC3 (struct ahci_host_priv*) ; 
 struct ahci_host_priv* FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct platform_device*,struct ahci_host_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ahci_platform_sht ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct brcm_ahci_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct brcm_ahci_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct brcm_ahci_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*) ; 
 struct ahci_host_priv* FUNC11 (struct device*,struct resource*) ; 
 struct brcm_ahci_priv* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,char*) ; 
 struct of_device_id* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	const struct of_device_id *of_id;
	struct device *dev = &pdev->dev;
	struct brcm_ahci_priv *priv;
	struct ahci_host_priv *hpriv;
	struct resource *res;
	int ret;

	priv = FUNC12(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	of_id = FUNC14(ahci_of_match, pdev->dev.of_node);
	if (!of_id)
		return -ENODEV;

	priv->version = (enum brcm_ahci_version)of_id->data;
	priv->dev = dev;

	res = FUNC15(pdev, IORESOURCE_MEM, "top-ctrl");
	priv->top_ctrl = FUNC11(dev, res);
	if (FUNC0(priv->top_ctrl))
		return FUNC2(priv->top_ctrl);

	/* Reset is optional depending on platform */
	priv->rcdev = FUNC13(&pdev->dev, "ahci");
	if (!FUNC1(priv->rcdev))
		FUNC16(priv->rcdev);

	if ((priv->version == BRCM_SATA_BCM7425) ||
		(priv->version == BRCM_SATA_NSP)) {
		priv->quirks |= BRCM_AHCI_QUIRK_NO_NCQ;
		priv->quirks |= BRCM_AHCI_QUIRK_SKIP_PHY_ENABLE;
	}

	FUNC8(priv);

	priv->port_mask = FUNC6(pdev, priv);
	if (!priv->port_mask)
		return -ENODEV;

	FUNC9(priv);

	hpriv = FUNC4(pdev, 0);
	if (FUNC0(hpriv))
		return FUNC2(hpriv);
	hpriv->plat_data = priv;
	hpriv->flags = AHCI_HFLAG_WAKE_BEFORE_STOP;

	FUNC7(hpriv);

	ret = FUNC3(hpriv);
	if (ret)
		return ret;

	if (priv->quirks & BRCM_AHCI_QUIRK_NO_NCQ)
		hpriv->flags |= AHCI_HFLAG_NO_NCQ;
	hpriv->flags |= AHCI_HFLAG_NO_WRITE_TO_RO;

	ret = FUNC5(pdev, hpriv, &ahci_brcm_port_info,
				      &ahci_platform_sht);
	if (ret)
		return ret;

	FUNC10(dev, "Broadcom AHCI SATA3 registered\n");

	return 0;
}