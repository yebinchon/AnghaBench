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
struct regmap {scalar_t__ cache_type; TYPE_1__* cache_ops; } ;
struct TYPE_2__ {int (* read ) (struct regmap*,unsigned int,unsigned int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOSYS ; 
 scalar_t__ REGCACHE_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,unsigned int) ; 
 int FUNC2 (struct regmap*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,unsigned int,unsigned int) ; 

int FUNC4(struct regmap *map,
		  unsigned int reg, unsigned int *value)
{
	int ret;

	if (map->cache_type == REGCACHE_NONE)
		return -ENOSYS;

	FUNC0(!map->cache_ops);

	if (!FUNC1(map, reg)) {
		ret = map->cache_ops->read(map, reg, value);

		if (ret == 0)
			FUNC3(map, reg, *value);

		return ret;
	}

	return -EINVAL;
}