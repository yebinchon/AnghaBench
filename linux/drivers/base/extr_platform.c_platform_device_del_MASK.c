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
struct resource {scalar_t__ parent; } ;
struct platform_device {int num_resources; struct resource* resource; int /*<<< orphan*/  id; scalar_t__ id_auto; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  platform_devid_ida ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 

void FUNC4(struct platform_device *pdev)
{
	int i;

	if (!FUNC0(pdev)) {
		FUNC1(&pdev->dev);

		if (pdev->id_auto) {
			FUNC2(&platform_devid_ida, pdev->id);
			pdev->id = PLATFORM_DEVID_AUTO;
		}

		for (i = 0; i < pdev->num_resources; i++) {
			struct resource *r = &pdev->resource[i];
			if (r->parent)
				FUNC3(r);
		}
	}
}