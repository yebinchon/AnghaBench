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
struct platform_device {int dummy; } ;
struct omap_device {int hwmods_cnt; int /*<<< orphan*/ * hwmods; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 struct omap_device* FUNC1 (struct platform_device*) ; 

int FUNC2(struct platform_device *pdev, const char *name)
{
	struct omap_device *od = FUNC1(pdev);
	int ret = 0;
	int i;

	for (i = 0; i < od->hwmods_cnt; i++) {
		ret = FUNC0(od->hwmods[i], name);
		if (ret)
			break;
	}

	return ret;
}