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
struct TYPE_2__ {struct omap_device* od; } ;
struct platform_device {int /*<<< orphan*/  dev; TYPE_1__ archdata; } ;
struct omap_hwmod {struct omap_device* od; } ;
struct omap_device {int hwmods_cnt; struct platform_device* pdev; struct omap_hwmod** hwmods; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct omap_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct omap_device*,struct omap_hwmod*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_device*) ; 
 struct omap_hwmod** FUNC4 (struct omap_hwmod**,int,int /*<<< orphan*/ ) ; 
 struct omap_device* FUNC5 (int,int /*<<< orphan*/ ) ; 

struct omap_device *FUNC6(struct platform_device *pdev,
					struct omap_hwmod **ohs, int oh_cnt)
{
	int ret = -ENOMEM;
	struct omap_device *od;
	int i;
	struct omap_hwmod **hwmods;

	od = FUNC5(sizeof(struct omap_device), GFP_KERNEL);
	if (!od) {
		ret = -ENOMEM;
		goto oda_exit1;
	}
	od->hwmods_cnt = oh_cnt;

	hwmods = FUNC4(ohs, sizeof(struct omap_hwmod *) * oh_cnt, GFP_KERNEL);
	if (!hwmods)
		goto oda_exit2;

	od->hwmods = hwmods;
	od->pdev = pdev;
	pdev->archdata.od = od;

	for (i = 0; i < oh_cnt; i++) {
		hwmods[i]->od = od;
		FUNC1(od, hwmods[i]);
	}

	return od;

oda_exit2:
	FUNC3(od);
oda_exit1:
	FUNC2(&pdev->dev, "omap_device: build failed (%d)\n", ret);

	return FUNC0(ret);
}