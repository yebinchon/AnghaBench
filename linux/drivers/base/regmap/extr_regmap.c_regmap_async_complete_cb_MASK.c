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
struct regmap_async {int /*<<< orphan*/  list; struct regmap* map; } ;
struct regmap {int async_ret; int /*<<< orphan*/  async_waitq; int /*<<< orphan*/  async_lock; int /*<<< orphan*/  async_list; int /*<<< orphan*/  async_free; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct regmap_async *async, int ret)
{
	struct regmap *map = async->map;
	bool wake;

	FUNC4(map);

	FUNC2(&map->async_lock);
	FUNC1(&async->list, &map->async_free);
	wake = FUNC0(&map->async_list);

	if (ret != 0)
		map->async_ret = ret;

	FUNC3(&map->async_lock);

	if (wake)
		FUNC5(&map->async_waitq);
}