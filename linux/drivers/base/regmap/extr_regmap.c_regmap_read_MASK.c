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
struct regmap {int /*<<< orphan*/  lock_arg; int /*<<< orphan*/  (* unlock ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* lock ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  reg_stride; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct regmap*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct regmap *map, unsigned int reg, unsigned int *val)
{
	int ret;

	if (!FUNC0(reg, map->reg_stride))
		return -EINVAL;

	map->lock(map->lock_arg);

	ret = FUNC1(map, reg, val);

	map->unlock(map->lock_arg);

	return ret;
}