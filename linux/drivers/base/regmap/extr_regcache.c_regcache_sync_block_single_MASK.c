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
struct regmap {unsigned int reg_stride; int cache_bypass; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct regmap*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 unsigned int FUNC3 (struct regmap*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct regmap *map, void *block,
				      unsigned long *cache_present,
				      unsigned int block_base,
				      unsigned int start, unsigned int end)
{
	unsigned int i, regtmp, val;
	int ret;

	for (i = start; i < end; i++) {
		regtmp = block_base + (i * map->reg_stride);

		if (!FUNC5(cache_present, i) ||
		    !FUNC6(map, regtmp))
			continue;

		val = FUNC3(map, block, i);
		if (!FUNC4(map, regtmp, val))
			continue;

		map->cache_bypass = true;

		ret = FUNC0(map, regtmp, val);

		map->cache_bypass = false;
		if (ret != 0) {
			FUNC2(map->dev, "Unable to sync register %#x. %d\n",
				regtmp, ret);
			return ret;
		}
		FUNC1(map->dev, "Synced register %#x, value %#x\n",
			regtmp, val);
	}

	return 0;
}