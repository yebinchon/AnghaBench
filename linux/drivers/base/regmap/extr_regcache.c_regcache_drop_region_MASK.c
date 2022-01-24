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
struct regmap {int /*<<< orphan*/  lock_arg; int /*<<< orphan*/  (* unlock ) (int /*<<< orphan*/ ) ;TYPE_1__* cache_ops; int /*<<< orphan*/  (* lock ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {int (* drop ) (struct regmap*,unsigned int,unsigned int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct regmap*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,unsigned int,unsigned int) ; 

int FUNC4(struct regmap *map, unsigned int min,
			 unsigned int max)
{
	int ret = 0;

	if (!map->cache_ops || !map->cache_ops->drop)
		return -EINVAL;

	map->lock(map->lock_arg);

	FUNC3(map, min, max);

	ret = map->cache_ops->drop(map, min, max);

	map->unlock(map->lock_arg);

	return ret;
}