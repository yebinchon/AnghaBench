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
struct regmap {int async_ret; int /*<<< orphan*/  async_lock; int /*<<< orphan*/  async_waitq; TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  async_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct regmap *map)
{
	unsigned long flags;
	int ret;

	/* Nothing to do with no async support */
	if (!map->bus || !map->bus->async_write)
		return 0;

	FUNC4(map);

	FUNC5(map->async_waitq, FUNC0(map));

	FUNC1(&map->async_lock, flags);
	ret = map->async_ret;
	map->async_ret = 0;
	FUNC2(&map->async_lock, flags);

	FUNC3(map);

	return ret;
}