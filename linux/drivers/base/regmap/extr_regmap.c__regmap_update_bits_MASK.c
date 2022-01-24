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
struct regmap {int (* reg_update_bits ) (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ;int /*<<< orphan*/  bus_context; } ;

/* Variables and functions */
 int FUNC0 (struct regmap*,unsigned int,unsigned int*) ; 
 int FUNC1 (struct regmap*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (struct regmap*,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct regmap *map, unsigned int reg,
			       unsigned int mask, unsigned int val,
			       bool *change, bool force_write)
{
	int ret;
	unsigned int tmp, orig;

	if (change)
		*change = false;

	if (FUNC2(map, reg) && map->reg_update_bits) {
		ret = map->reg_update_bits(map->bus_context, reg, mask, val);
		if (ret == 0 && change)
			*change = true;
	} else {
		ret = FUNC0(map, reg, &orig);
		if (ret != 0)
			return ret;

		tmp = orig & ~mask;
		tmp |= val & mask;

		if (force_write || (tmp != orig)) {
			ret = FUNC1(map, reg, tmp);
			if (ret == 0 && change)
				*change = true;
		}
	}

	return ret;
}