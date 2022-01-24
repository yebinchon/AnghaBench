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
struct regmap {scalar_t__ cache_type; TYPE_1__* cache_ops; int /*<<< orphan*/  dev; int /*<<< orphan*/  reg_defaults_raw; scalar_t__ cache_free; int /*<<< orphan*/  reg_defaults; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* exit ) (struct regmap*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ REGCACHE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*) ; 

void FUNC4(struct regmap *map)
{
	if (map->cache_type == REGCACHE_NONE)
		return;

	FUNC0(!map->cache_ops);

	FUNC2(map->reg_defaults);
	if (map->cache_free)
		FUNC2(map->reg_defaults_raw);

	if (map->cache_ops->exit) {
		FUNC1(map->dev, "Destroying %s cache\n",
			map->cache_ops->name);
		map->cache_ops->exit(map);
	}
}