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
struct regmap {int (* reg_read ) (void*,unsigned int,unsigned int*) ;int /*<<< orphan*/  cache_bypass; int /*<<< orphan*/  dev; scalar_t__ cache_only; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 void* FUNC0 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int FUNC2 (struct regmap*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,unsigned int) ; 
 scalar_t__ FUNC5 (struct regmap*) ; 
 int FUNC6 (void*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct regmap*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct regmap *map, unsigned int reg,
			unsigned int *val)
{
	int ret;
	void *context = FUNC0(map);

	if (!map->cache_bypass) {
		ret = FUNC2(map, reg, val);
		if (ret == 0)
			return 0;
	}

	if (map->cache_only)
		return -EBUSY;

	if (!FUNC4(map, reg))
		return -EIO;

	ret = map->reg_read(context, reg, val);
	if (ret == 0) {
		if (FUNC5(map))
			FUNC1(map->dev, "%x => %x\n", reg, *val);

		FUNC7(map, reg, *val);

		if (!map->cache_bypass)
			FUNC3(map, reg, *val);
	}

	return ret;
}