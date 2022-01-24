#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device_info {int /*<<< orphan*/  properties; int /*<<< orphan*/  size_data; int /*<<< orphan*/  data; int /*<<< orphan*/  num_res; int /*<<< orphan*/  res; scalar_t__ dma_mask; int /*<<< orphan*/  of_node_reused; int /*<<< orphan*/  fwnode; int /*<<< orphan*/  parent; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {scalar_t__* dma_mask; scalar_t__ coherent_dma_mask; int /*<<< orphan*/  of_node_reused; int /*<<< orphan*/  fwnode; int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 struct platform_device* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*) ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

struct platform_device *FUNC13(
		const struct platform_device_info *pdevinfo)
{
	int ret = -ENOMEM;
	struct platform_device *pdev;

	pdev = FUNC10(pdevinfo->name, pdevinfo->id);
	if (!pdev)
		return FUNC1(-ENOMEM);

	pdev->dev.parent = pdevinfo->parent;
	pdev->dev.fwnode = pdevinfo->fwnode;
	pdev->dev.of_node = FUNC5(FUNC12(pdev->dev.fwnode));
	pdev->dev.of_node_reused = pdevinfo->of_node_reused;

	if (pdevinfo->dma_mask) {
		/*
		 * This memory isn't freed when the device is put,
		 * I don't have a nice idea for that though.  Conceptually
		 * dma_mask in struct device should not be a pointer.
		 * See http://thread.gmane.org/gmane.linux.kernel.pci/9081
		 */
		pdev->dev.dma_mask =
			FUNC3(sizeof(*pdev->dev.dma_mask), GFP_KERNEL);
		if (!pdev->dev.dma_mask)
			goto err;

		FUNC4(pdev->dev.dma_mask);

		*pdev->dev.dma_mask = pdevinfo->dma_mask;
		pdev->dev.coherent_dma_mask = pdevinfo->dma_mask;
	}

	ret = FUNC9(pdev,
			pdevinfo->res, pdevinfo->num_res);
	if (ret)
		goto err;

	ret = FUNC7(pdev,
			pdevinfo->data, pdevinfo->size_data);
	if (ret)
		goto err;

	if (pdevinfo->properties) {
		ret = FUNC8(pdev,
						     pdevinfo->properties);
		if (ret)
			goto err;
	}

	ret = FUNC6(pdev);
	if (ret) {
err:
		FUNC0(&pdev->dev, NULL);
		FUNC2(pdev->dev.dma_mask);
		FUNC11(pdev);
		return FUNC1(ret);
	}

	return pdev;
}