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
struct static_dep_map {scalar_t__ to; scalar_t__ from; } ;
struct clockdomain {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct clockdomain*,struct clockdomain*) ; 
 struct clockdomain* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__,...) ; 

__attribute__((used)) static inline int FUNC3(const struct static_dep_map *map)
{
	int ret;
	struct clockdomain *from, *to;

	if (!map)
		return 0;

	while (map->from) {
		from = FUNC1(map->from);
		to = FUNC1(map->to);
		if (!from || !to) {
			FUNC2("Failed lookup %s or %s for wakeup dependency\n",
			       map->from, map->to);
			return -EINVAL;
		}
		ret = FUNC0(from, to);
		if (ret) {
			FUNC2("Failed to add %s -> %s wakeup dependency(%d)\n",
			       map->from, map->to, ret);
			return ret;
		}

		map++;
	}

	return 0;
}