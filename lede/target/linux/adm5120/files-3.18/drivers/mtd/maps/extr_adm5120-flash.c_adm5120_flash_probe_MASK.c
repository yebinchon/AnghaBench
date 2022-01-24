#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct adm5120_flash_platform_data* platform_data; } ;
struct platform_device {TYPE_4__ dev; } ;
struct map_info {scalar_t__ size; int bankwidth; scalar_t__ phys; int /*<<< orphan*/  virt; } ;
struct adm5120_flash_platform_data {int /*<<< orphan*/  nr_parts; int /*<<< orphan*/  parts; } ;
struct TYPE_5__ {scalar_t__ window_size; struct map_info map; } ;
struct adm5120_flash_info {TYPE_2__* mtd; TYPE_1__ amap; int /*<<< orphan*/  res; } ;
struct TYPE_6__ {scalar_t__ size; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct map_info*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct map_info*,char*,unsigned long,...) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct adm5120_flash_info*) ; 
 int FUNC3 (struct adm5120_flash_info*,struct platform_device*) ; 
 int FUNC4 (struct adm5120_flash_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 TYPE_2__* FUNC7 (char const*,struct map_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct adm5120_flash_info* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parse_types ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct adm5120_flash_info*) ; 
 char** probe_types ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct platform_device *dev)
{
	struct adm5120_flash_platform_data *pdata;
	struct adm5120_flash_info *info;
	struct map_info *map;
	const char **probe_type;
	int err;

	pdata = dev->dev.platform_data;
	if (!pdata) {
		FUNC6(&dev->dev, "no platform data\n");
		return -EINVAL;
	}

	info = FUNC10(sizeof(*info), GFP_KERNEL);
	if (info == NULL) {
		err = -ENOMEM;
		goto err_out;
	}

	FUNC12(dev, info);

	err = FUNC3(info, dev);
	if (err)
		goto err_out;

	err = FUNC4(info);
	if (err)
		goto err_out;

	map = &info->amap.map;
	for (probe_type = probe_types; info->mtd == NULL && *probe_type != NULL;
		probe_type++)
		info->mtd = FUNC7(*probe_type, map);

	if (info->mtd == NULL) {
		FUNC0(map, "map_probe failed\n");
		err = -ENXIO;
		goto err_out;
	}

	FUNC2(info);

	if (info->mtd->size < info->amap.window_size) {
		/* readjust resources */
		FUNC8(map->virt);
		FUNC13(info->res);
		FUNC9(info->res);

		info->amap.window_size = info->mtd->size;
		map->size = info->mtd->size;
		FUNC1(map, "reducing map size to %ldKiB\n",
			(unsigned long)map->size >> 10);
		err = FUNC4(info);
		if (err)
			goto err_out;
	}

	FUNC1(map, "found at 0x%lX, size:%ldKiB, width:%d bits\n",
		(unsigned long)map->phys, (unsigned long)info->mtd->size >> 10,
		map->bankwidth*8);

	info->mtd->owner = THIS_MODULE;

	err = FUNC11(info->mtd, parse_types, 0,
				  	pdata->parts, pdata->nr_parts);
	if (err)
		goto err_out;

	return 0;

err_out:
	FUNC5(dev);
	return err;
}