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
struct regmap {scalar_t__ reg_stride_order; unsigned int max_register; unsigned int* cache; int num_reg_defaults; TYPE_1__* reg_defaults; } ;
struct TYPE_2__ {unsigned int reg; unsigned int def; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int* FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct regmap*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct regmap *map)
{
	int i;
	unsigned int *cache;

	if (!map || map->reg_stride_order < 0 || !map->max_register)
		return -EINVAL;

	map->cache = FUNC0(FUNC1(map, map->max_register)
			     + 1, sizeof(unsigned int), GFP_KERNEL);
	if (!map->cache)
		return -ENOMEM;

	cache = map->cache;

	for (i = 0; i < map->num_reg_defaults; i++) {
		unsigned int reg = map->reg_defaults[i].reg;
		unsigned int index = FUNC1(map, reg);

		cache[index] = map->reg_defaults[i].def;
	}

	return 0;
}