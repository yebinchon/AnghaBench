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
struct map_info {int /*<<< orphan*/ * virt; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  window_size; struct map_info map; } ;
struct adm5120_flash_info {TYPE_1__ amap; int /*<<< orphan*/ * res; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct map_info*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct adm5120_flash_info *info)
{
	struct map_info *map = &info->amap.map;
	int err = 0;

	info->res = FUNC2(map->phys, info->amap.window_size,
			map->name);
	if (info->res == NULL) {
		FUNC0(map, "could not reserve memory region\n");
		err = -ENOMEM;
		goto out;
	}

	map->virt = FUNC1(map->phys, info->amap.window_size);
	if (map->virt == NULL) {
		FUNC0(map, "failed to ioremap flash region\n");
		err = -ENOMEM;
		goto out;
	}

out:
	return err;
}