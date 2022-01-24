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
struct regmap {int cache_dirty; int (* reg_write ) (void*,unsigned int,unsigned int) ;int /*<<< orphan*/  dev; scalar_t__ cache_only; int /*<<< orphan*/  defer_caching; int /*<<< orphan*/  cache_bypass; } ;

/* Variables and functions */
 int EIO ; 
 void* FUNC0 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int FUNC2 (struct regmap*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC3 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,unsigned int) ; 
 int FUNC5 (void*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,unsigned int,unsigned int) ; 

int FUNC7(struct regmap *map, unsigned int reg,
		  unsigned int val)
{
	int ret;
	void *context = FUNC0(map);

	if (!FUNC4(map, reg))
		return -EIO;

	if (!map->cache_bypass && !map->defer_caching) {
		ret = FUNC2(map, reg, val);
		if (ret != 0)
			return ret;
		if (map->cache_only) {
			map->cache_dirty = true;
			return 0;
		}
	}

	if (FUNC3(map))
		FUNC1(map->dev, "%x <= %x\n", reg, val);

	FUNC6(map, reg, val);

	return map->reg_write(context, reg, val);
}