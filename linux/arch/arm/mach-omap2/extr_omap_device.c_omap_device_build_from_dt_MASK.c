#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/ * name; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {int num_resources; TYPE_1__ dev; struct resource* resource; } ;
struct omap_hwmod {int flags; } ;
struct omap_device {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HWMOD_INIT_NO_IDLE ; 
 scalar_t__ FUNC0 (struct omap_device*) ; 
 int FUNC1 (struct omap_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct omap_hwmod** FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_hwmod**) ; 
 int FUNC8 (struct device_node*,char*) ; 
 int FUNC9 (struct device_node*,char*,int,char const**) ; 
 struct omap_device* FUNC10 (struct platform_device*,struct omap_hwmod**,int) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 int /*<<< orphan*/  omap_device_fail_pm_domain ; 
 int /*<<< orphan*/  omap_device_pm_domain ; 
 struct omap_hwmod* FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct device_node*,struct resource*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct omap_hwmod **hwmods;
	struct omap_device *od;
	struct omap_hwmod *oh;
	struct device_node *node = pdev->dev.of_node;
	struct resource res;
	const char *oh_name;
	int oh_cnt, i, ret = 0;
	bool device_active = false, skip_pm_domain = false;

	oh_cnt = FUNC8(node, "ti,hwmods");
	if (oh_cnt <= 0) {
		FUNC2(&pdev->dev, "No 'hwmods' to build omap_device\n");
		return -ENODEV;
	}

	/* SDMA still needs special handling for omap_device_build() */
	ret = FUNC9(node, "ti,hwmods", 0, &oh_name);
	if (!ret && (!FUNC15("dma_system", oh_name, 10) ||
		     !FUNC15("dma", oh_name, 3)))
		skip_pm_domain = true;

	/* Use ti-sysc driver instead of omap_device? */
	if (!skip_pm_domain &&
	    !FUNC13(NULL, node, &res))
		return -ENODEV;

	hwmods = FUNC6(oh_cnt, sizeof(struct omap_hwmod *), GFP_KERNEL);
	if (!hwmods) {
		ret = -ENOMEM;
		goto odbfd_exit;
	}

	for (i = 0; i < oh_cnt; i++) {
		FUNC9(node, "ti,hwmods", i, &oh_name);
		oh = FUNC12(oh_name);
		if (!oh) {
			FUNC3(&pdev->dev, "Cannot lookup hwmod '%s'\n",
				oh_name);
			ret = -EINVAL;
			goto odbfd_exit1;
		}
		hwmods[i] = oh;
		if (oh->flags & HWMOD_INIT_NO_IDLE)
			device_active = true;
	}

	od = FUNC10(pdev, hwmods, oh_cnt);
	if (FUNC0(od)) {
		FUNC3(&pdev->dev, "Cannot allocate omap_device for :%s\n",
			oh_name);
		ret = FUNC1(od);
		goto odbfd_exit1;
	}

	/* Fix up missing resource names */
	for (i = 0; i < pdev->num_resources; i++) {
		struct resource *r = &pdev->resource[i];

		if (r->name == NULL)
			r->name = FUNC4(&pdev->dev);
	}

	if (!skip_pm_domain) {
		FUNC5(&pdev->dev, &omap_device_pm_domain);
		if (device_active) {
			FUNC11(pdev);
			FUNC14(&pdev->dev);
		}
	}

odbfd_exit1:
	FUNC7(hwmods);
odbfd_exit:
	/* if data/we are at fault.. load up a fail handler */
	if (ret)
		FUNC5(&pdev->dev, &omap_device_fail_pm_domain);

	return ret;
}