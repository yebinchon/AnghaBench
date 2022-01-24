#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * virt; } ;
struct TYPE_4__ {TYPE_1__ map; } ;
struct adm5120_flash_info {int /*<<< orphan*/ * res; TYPE_2__ amap; int /*<<< orphan*/ * mtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct adm5120_flash_info* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *dev)
{
	struct adm5120_flash_info *info;

	info = FUNC4(dev);
	if (info == NULL)
		return 0;

	FUNC5(dev, NULL);

	if (info->mtd != NULL) {
		FUNC3(info->mtd);
		FUNC2(info->mtd);
	}

	if (info->amap.map.virt != NULL)
		FUNC0(info->amap.map.virt);

	if (info->res != NULL) {
		FUNC6(info->res);
		FUNC1(info->res);
	}

	return 0;
}