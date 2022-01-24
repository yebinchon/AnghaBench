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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct ata_port_info {int dummy; } ;
struct ahci_host_priv {int flags; int /*<<< orphan*/  force_port_map; } ;

/* Variables and functions */
 int AHCI_HFLAG_NO_FBS ; 
 int AHCI_HFLAG_NO_NCQ ; 
 int /*<<< orphan*/  AHCI_PLATFORM_GET_RESETS ; 
 scalar_t__ FUNC0 (struct ahci_host_priv*) ; 
 int FUNC1 (struct ahci_host_priv*) ; 
 struct ata_port_info* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahci_host_priv*) ; 
 int FUNC4 (struct ahci_host_priv*) ; 
 struct ahci_host_priv* FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*,struct ahci_host_priv*,struct ata_port_info const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ahci_platform_sht ; 
 struct ata_port_info ahci_port_info ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct ahci_host_priv *hpriv;
	const struct ata_port_info *port;
	int rc;

	hpriv = FUNC5(pdev,
					    AHCI_PLATFORM_GET_RESETS);
	if (FUNC0(hpriv))
		return FUNC1(hpriv);

	rc = FUNC4(hpriv);
	if (rc)
		return rc;

	FUNC8(dev->of_node,
			     "ports-implemented", &hpriv->force_port_map);

	if (FUNC7(dev->of_node, "hisilicon,hisi-ahci"))
		hpriv->flags |= AHCI_HFLAG_NO_FBS | AHCI_HFLAG_NO_NCQ;

	port = FUNC2(dev);
	if (!port)
		port = &ahci_port_info;

	rc = FUNC6(pdev, hpriv, port,
				     &ahci_platform_sht);
	if (rc)
		goto disable_resources;

	return 0;
disable_resources:
	FUNC3(hpriv);
	return rc;
}