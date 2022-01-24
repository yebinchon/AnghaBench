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
struct regmap {int cache_bypass; int /*<<< orphan*/  dev; scalar_t__ reg_stride; } ;

/* Variables and functions */
 int FUNC0 (struct regmap*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int FUNC3 (struct regmap*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 (struct regmap*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct regmap *map, unsigned int min,
				 unsigned int max)
{
	unsigned int reg;

	for (reg = min; reg <= max; reg += map->reg_stride) {
		unsigned int val;
		int ret;

		if (FUNC5(map, reg) ||
		    !FUNC6(map, reg))
			continue;

		ret = FUNC3(map, reg, &val);
		if (ret)
			return ret;

		if (!FUNC4(map, reg, val))
			continue;

		map->cache_bypass = true;
		ret = FUNC0(map, reg, val);
		map->cache_bypass = false;
		if (ret) {
			FUNC2(map->dev, "Unable to sync register %#x. %d\n",
				reg, ret);
			return ret;
		}
		FUNC1(map->dev, "Synced register %#x, value %#x\n", reg, val);
	}

	return 0;
}