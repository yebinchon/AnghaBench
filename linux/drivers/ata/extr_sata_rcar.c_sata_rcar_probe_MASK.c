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
struct sata_rcar_priv {int type; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ata_host {struct sata_rcar_priv* private_data; } ;
typedef  enum sata_rcar_type { ____Placeholder_sata_rcar_type } sata_rcar_type ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ata_host*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ata_host* FUNC3 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 struct sata_rcar_priv* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device*) ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct ata_host*) ; 
 int /*<<< orphan*/  sata_rcar_interrupt ; 
 int /*<<< orphan*/  FUNC14 (struct ata_host*) ; 
 int /*<<< orphan*/  sata_rcar_sht ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct ata_host *host;
	struct sata_rcar_priv *priv;
	struct resource *mem;
	int irq;
	int ret = 0;

	irq = FUNC7(pdev, 0);
	if (irq < 0)
		return irq;
	if (!irq)
		return -EINVAL;

	priv = FUNC5(dev, sizeof(struct sata_rcar_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->type = (enum sata_rcar_type)FUNC6(dev);

	FUNC10(dev);
	ret = FUNC11(dev);
	if (ret < 0)
		goto err_pm_disable;

	host = FUNC3(dev, 1);
	if (!host) {
		ret = -ENOMEM;
		goto err_pm_put;
	}

	host->private_data = priv;

	mem = FUNC8(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC4(dev, mem);
	if (FUNC0(priv->base)) {
		ret = FUNC1(priv->base);
		goto err_pm_put;
	}

	/* setup port */
	FUNC14(host);

	/* initialize host controller */
	FUNC13(host);

	ret = FUNC2(host, irq, sata_rcar_interrupt, 0,
				&sata_rcar_sht);
	if (!ret)
		return 0;

err_pm_put:
	FUNC12(dev);
err_pm_disable:
	FUNC9(dev);
	return ret;
}