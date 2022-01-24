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
struct regmap {int /*<<< orphan*/  use_single_write; } ;

/* Variables and functions */
 int FUNC0 (struct regmap*,void*,unsigned long*,unsigned int,unsigned int,unsigned int) ; 
 int FUNC1 (struct regmap*,void*,unsigned long*,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (struct regmap*) ; 

int FUNC3(struct regmap *map, void *block,
			unsigned long *cache_present,
			unsigned int block_base, unsigned int start,
			unsigned int end)
{
	if (FUNC2(map) && !map->use_single_write)
		return FUNC0(map, block, cache_present,
					       block_base, start, end);
	else
		return FUNC1(map, block, cache_present,
						  block_base, start, end);
}