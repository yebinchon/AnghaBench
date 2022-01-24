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
struct regmap {unsigned int reg_stride; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct regmap*,void*,unsigned int) ; 
 void* FUNC1 (struct regmap*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,unsigned int) ; 
 int FUNC4 (struct regmap*,void const**,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct regmap *map, void *block,
			    unsigned long *cache_present,
			    unsigned int block_base, unsigned int start,
			    unsigned int end)
{
	unsigned int i, val;
	unsigned int regtmp = 0;
	unsigned int base = 0;
	const void *data = NULL;
	int ret;

	for (i = start; i < end; i++) {
		regtmp = block_base + (i * map->reg_stride);

		if (!FUNC3(cache_present, i) ||
		    !FUNC5(map, regtmp)) {
			ret = FUNC4(map, &data,
							    base, regtmp);
			if (ret != 0)
				return ret;
			continue;
		}

		val = FUNC0(map, block, i);
		if (!FUNC2(map, regtmp, val)) {
			ret = FUNC4(map, &data,
							    base, regtmp);
			if (ret != 0)
				return ret;
			continue;
		}

		if (!data) {
			data = FUNC1(map, block, i);
			base = regtmp;
		}
	}

	return FUNC4(map, &data, base, regtmp +
			map->reg_stride);
}