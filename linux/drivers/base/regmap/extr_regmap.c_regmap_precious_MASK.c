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
struct regmap {int (* precious_reg ) (int /*<<< orphan*/ ,unsigned int) ;scalar_t__ precious_table; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct regmap*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

bool FUNC3(struct regmap *map, unsigned int reg)
{
	if (!FUNC1(map, reg))
		return false;

	if (map->precious_reg)
		return map->precious_reg(map->dev, reg);

	if (map->precious_table)
		return FUNC0(map, reg, map->precious_table);

	return false;
}