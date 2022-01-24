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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct ahci_qoriq_priv {int type; int /*<<< orphan*/  is_dmacoherent; struct ahci_host_priv* ecc_addr; } ;
struct ahci_host_priv {struct ahci_qoriq_priv* plat_data; } ;
typedef  enum ahci_qoriq_type { ____Placeholder_ahci_qoriq_type } ahci_qoriq_type ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct ahci_host_priv*) ; 
 int FUNC1 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahci_host_priv*) ; 
 int FUNC3 (struct ahci_host_priv*) ; 
 struct ahci_host_priv* FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct platform_device*,struct ahci_host_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ahci_qoriq_of_match ; 
 int FUNC6 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  ahci_qoriq_port_info ; 
 int /*<<< orphan*/  ahci_qoriq_sht ; 
 struct ahci_host_priv* FUNC7 (struct device*,struct resource*) ; 
 struct ahci_qoriq_priv* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ecc_initialized ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,struct device_node*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct device *dev = &pdev->dev;
	struct ahci_host_priv *hpriv;
	struct ahci_qoriq_priv *qoriq_priv;
	const struct of_device_id *of_id;
	struct resource *res;
	int rc;

	hpriv = FUNC4(pdev, 0);
	if (FUNC0(hpriv))
		return FUNC1(hpriv);

	of_id = FUNC10(ahci_qoriq_of_match, np);
	if (!of_id)
		return -ENODEV;

	qoriq_priv = FUNC8(dev, sizeof(*qoriq_priv), GFP_KERNEL);
	if (!qoriq_priv)
		return -ENOMEM;

	qoriq_priv->type = (enum ahci_qoriq_type)of_id->data;

	if (FUNC12(!ecc_initialized)) {
		res = FUNC11(pdev,
						   IORESOURCE_MEM,
						   "sata-ecc");
		if (res) {
			qoriq_priv->ecc_addr =
				FUNC7(dev, res);
			if (FUNC0(qoriq_priv->ecc_addr))
				return FUNC1(qoriq_priv->ecc_addr);
		}
	}

	qoriq_priv->is_dmacoherent = FUNC9(np);

	rc = FUNC3(hpriv);
	if (rc)
		return rc;

	hpriv->plat_data = qoriq_priv;
	rc = FUNC6(hpriv);
	if (rc)
		goto disable_resources;

	rc = FUNC5(pdev, hpriv, &ahci_qoriq_port_info,
				     &ahci_qoriq_sht);
	if (rc)
		goto disable_resources;

	return 0;

disable_resources:
	FUNC2(hpriv);

	return rc;
}