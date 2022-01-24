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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ahci_mvebu_plat_data {int (* plat_config ) (struct ahci_host_priv*) ;int /*<<< orphan*/  flags; } ;
struct ahci_host_priv {int /*<<< orphan*/  stop_engine; void* plat_data; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ahci_host_priv*) ; 
 int FUNC1 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  ahci_mvebu_port_info ; 
 int /*<<< orphan*/  ahci_mvebu_stop_engine ; 
 int /*<<< orphan*/  FUNC2 (struct ahci_host_priv*) ; 
 int FUNC3 (struct ahci_host_priv*) ; 
 struct ahci_host_priv* FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct platform_device*,struct ahci_host_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ahci_platform_sht ; 
 struct ahci_mvebu_plat_data* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ahci_host_priv*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	const struct ahci_mvebu_plat_data *pdata;
	struct ahci_host_priv *hpriv;
	int rc;

	pdata = FUNC6(&pdev->dev);
	if (!pdata)
		return -EINVAL;

	hpriv = FUNC4(pdev, 0);
	if (FUNC0(hpriv))
		return FUNC1(hpriv);

	hpriv->flags |= pdata->flags;
	hpriv->plat_data = (void *)pdata;

	rc = FUNC3(hpriv);
	if (rc)
		return rc;

	hpriv->stop_engine = ahci_mvebu_stop_engine;

	rc = pdata->plat_config(hpriv);
	if (rc)
		goto disable_resources;

	rc = FUNC5(pdev, hpriv, &ahci_mvebu_port_info,
				     &ahci_platform_sht);
	if (rc)
		goto disable_resources;

	return 0;

disable_resources:
	FUNC2(hpriv);
	return rc;
}