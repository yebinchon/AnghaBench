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
struct ssp_device {scalar_t__ irq; int type; int /*<<< orphan*/  node; scalar_t__ of_node; scalar_t__ use_count; int /*<<< orphan*/  port_id; int /*<<< orphan*/ * mmio_base; int /*<<< orphan*/  phys_base; int /*<<< orphan*/  clk; struct platform_device* pdev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device_id {scalar_t__ driver_data; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {int /*<<< orphan*/  id; int /*<<< orphan*/  name; struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ssp_device* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct platform_device_id* FUNC12 (struct platform_device*) ; 
 scalar_t__ FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct ssp_device*) ; 
 int /*<<< orphan*/  pxa_ssp_of_ids ; 
 int /*<<< orphan*/  FUNC16 (struct resource*) ; 
 int /*<<< orphan*/  ssp_list ; 
 int /*<<< orphan*/  ssp_lock ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct resource *res;
	struct ssp_device *ssp;
	struct device *dev = &pdev->dev;

	ssp = FUNC5(dev, sizeof(struct ssp_device), GFP_KERNEL);
	if (ssp == NULL)
		return -ENOMEM;

	ssp->pdev = pdev;

	ssp->clk = FUNC3(dev, NULL);
	if (FUNC0(ssp->clk))
		return FUNC1(ssp->clk);

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC2(dev, "no memory resource defined\n");
		return -ENODEV;
	}

	res = FUNC6(dev, res->start, FUNC16(res),
				      pdev->name);
	if (res == NULL) {
		FUNC2(dev, "failed to request memory resource\n");
		return -EBUSY;
	}

	ssp->phys_base = res->start;

	ssp->mmio_base = FUNC4(dev, res->start, FUNC16(res));
	if (ssp->mmio_base == NULL) {
		FUNC2(dev, "failed to ioremap() registers\n");
		return -ENODEV;
	}

	ssp->irq = FUNC13(pdev, 0);
	if (ssp->irq < 0) {
		FUNC2(dev, "no IRQ resource defined\n");
		return -ENODEV;
	}

	if (dev->of_node) {
		const struct of_device_id *id =
			FUNC10(FUNC11(pxa_ssp_of_ids), dev);
		ssp->type = (int) id->data;
	} else {
		const struct platform_device_id *id =
			FUNC12(pdev);
		ssp->type = (int) id->driver_data;

		/* PXA2xx/3xx SSP ports starts from 1 and the internal pdev->id
		 * starts from 0, do a translation here
		 */
		ssp->port_id = pdev->id + 1;
	}

	ssp->use_count = 0;
	ssp->of_node = dev->of_node;

	FUNC8(&ssp_lock);
	FUNC7(&ssp->node, &ssp_list);
	FUNC9(&ssp_lock);

	FUNC15(pdev, ssp);

	return 0;
}